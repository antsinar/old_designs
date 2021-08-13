/*******************************************************************
 *  Christmas 3 PCB - A Christmas tree shaped PCB
 *  
 *  12 Charlie-plexed LEDs running off an Attiny13
 *  
 *  By Brian Lough
 *  YouTube: https://www.youtube.com/brianlough
 *  Tindie: https://www.tindie.com/stores/brianlough/
 *  Twitch: https://twitch.tv/brianlough
 *  Twitter: @witnessmenow
 * 
 *  Rewritten by Piotr Zapart on Sunday 15 Nov 2020
 *  features:
 *  - hold down the button for two led cycles to increase the speed
 *  - current speed is stored in eeprom and will be restores upon
 *    next power up
 *  - significantly  reduced power consumption by using power down mode
 *  - smoothly pulsing leds 
 * 
 *  Project compiled using platform.io
 *  Use usbasp as the programmer:
 *  1. set the fuses to: hi byte = 0xff, lo byte = 0x3A
 *  2. write the firmware
 * 
 *  if you are using platformio everything is already preconfigured
 *  in the platformio.ini file, just connect the usbasp to the 
 *   programmer header and click upload
 *******************************************************************/
#include <Arduino.h>
#include <avr/sleep.h>
#include <avr/eeprom.h>

#define nop() asm volatile("nop")

#define BTN_DEBOUNCE_TICKS      2
#define SPEED_DEFAULT           4
#define SPEED_MAX               20

typedef enum
{
    BTN_RELEASED,
    BTN_PRESSED,
    BTN_LATCHED
}btn_state_t;

/**
 * @brief   PORTB table for charlieplexing
 *          PB1 is always an input + pullup (DDRB1 = 0, PORTB1 = 1)
 */
const uint8_t charlie_table[12][2] PROGMEM =
//          DDRB,               PORTB
{
    {(1 << PB0) | (1 << PB2), (1 << PB0) | (1 << PB1)}, // 0
    {(1 << PB0) | (1 << PB2), (1 << PB2) | (1 << PB1)}, // 1
    {(1 << PB2) | (1 << PB3), (1 << PB2) | (1 << PB1)}, // 2
    {(1 << PB2) | (1 << PB3), (1 << PB3) | (1 << PB1)}, // 3
    {(1 << PB3) | (1 << PB4), (1 << PB3) | (1 << PB1)}, // 4
    {(1 << PB3) | (1 << PB4), (1 << PB4) | (1 << PB1)}, // 5
    {(1 << PB0) | (1 << PB3), (1 << PB0) | (1 << PB1)}, // 6
    {(1 << PB0) | (1 << PB3), (1 << PB3) | (1 << PB1)}, // 7
    {(1 << PB2) | (1 << PB4), (1 << PB2) | (1 << PB1)}, // 8
    {(1 << PB2) | (1 << PB4), (1 << PB4) | (1 << PB1)}, // 9
    {(1 << PB0) | (1 << PB4), (1 << PB0) | (1 << PB1)}, // 10
    {(1 << PB0) | (1 << PB4), (1 << PB4) | (1 << PB1)}, // 11
};

uint8_t EEMEM speed_em;     // last speed setting is stored here
uint8_t speed = 0;
uint8_t a, b, c, x;         // for randomizer
uint8_t led1, led2, tmp8;
btn_state_t btn_flag = BTN_RELEASED;
uint8_t btn_debouncer;

void leds_off();
void charlie(uint8_t var);
void setup(void);
void go_to_bed(uint8_t time);
void led_pulse(uint8_t led1No, uint8_t led2No, uint8_t spd);
void init_rng(uint8_t s1, uint8_t s2, uint8_t s3);
uint8_t randomize();
void nop_it(uint8_t count);

void setup()
{
    PORTB |= (1 << PB1);                        // button input config
    DDRB &= ~(1 << PB1);                        //
    PRR |= (1 << PRADC) | (1<<PRTIM0);          // turn off the adc and tim0 clocks to save power
    sei();
    init_rng(0x41, 0xF1, 0x0A);
    speed = eeprom_read_byte(&speed_em);
    if (speed == 0xFF)                          //unprogrammed chip, save default setting
    {
        eeprom_write_byte(&speed_em, SPEED_DEFAULT);
        eeprom_busy_wait();
        speed = SPEED_DEFAULT;
    }
}

void loop()
{
    // make sure it will be a different led every time
    do
    {
        tmp8 = randomize() % 13;
    } while (tmp8 == led1);
    led1 = tmp8;
    do
    {
        tmp8 = randomize() % 13;
    } while (tmp8 == led2 || tmp8 == led1);
    led2 = tmp8;   
    
    led_pulse(led1, led2, speed);

    if (!(PINB & (1 << PB1)))   // using software pwm as a delay here
    {
        if (btn_flag==BTN_RELEASED) btn_debouncer++;
        if (btn_debouncer >= BTN_DEBOUNCE_TICKS)
        {
            btn_flag = BTN_PRESSED;
            if (btn_flag == BTN_PRESSED)
            {
                speed += 5;
                if (speed > SPEED_MAX) speed = SPEED_DEFAULT;
                eeprom_write_byte( &speed_em, speed);
                eeprom_busy_wait();
                for (led1 = 0; led1 < 5; led1++)
                {
                    charlie(speed>>1);
                    led2 = 255;
                    while (led2--) {nop_it(255);}
                    leds_off();
                    led2 = 255;
                    while (led2--) {nop_it(255);}
                }
                btn_flag = BTN_LATCHED;
            }
        }
    }
    else
    {
        btn_flag = BTN_RELEASED;
        btn_debouncer = 0;
    }  
}

/**
 * @brief time wasting function using nops
 * 
 * @param count how many time you'd like to nop it
 */
void nop_it(uint8_t count)
{
    while(count--) {nop();}
}

/**
 * @brief seed the random number generator for more entropy
 * 
 * @param s1 
 * @param s2 
 * @param s3 
 */
void init_rng(uint8_t s1,uint8_t  s2,uint8_t  s3) 
{
    a ^= s1;
    b ^= s2;
    c ^= s3;

    x++;
    a = (a ^ c ^ x);
    b = (b + a);
    c = ((c + (b >> 1)) ^ a);
}

/**
 * @brief geneate 8bit random numner
 * 
 * @return uint8_t new random value
 */
uint8_t randomize()
{
    x++;                    //x is incremented every round and is not affected by any other variable
    a = (a ^ c ^ x);        //note the mix of addition and XOR
    b = (b + a);            //And the use of very few instructions
    c = ((c + (b >> 1)) ^ a); //the right shift is to ensure that high-order bits from b can affect
    return (c);              //low order bits of other variables
}

/**
 * @brief software PWM for two charlieplexed leds
 * 
 * @param led1No 1st led number (1-12), 0 = led off
 * @param led2No 2nd led number (1-12), 0= led off
 * @param spd   speed parameter, basically spd*16ms (shortest watchdog period)
 */
void led_pulse(uint8_t led1No, uint8_t led2No, uint8_t spd)
{
    if (!spd)
        spd = 1;
    uint8_t acc = 0xFF;
    uint8_t cmp;
    uint16_t tmp16;
    if (!(led1No && led2No)) led1No = 11;

    while (acc > spd)
    {
        for (uint8_t step = 0; step < 0xFF; step++)
        {         
            if (acc & (1 << 7)) cmp = 0xff - (acc<<1);
            else                cmp = acc<<1;
            tmp16 = ((uint16_t)cmp*cmp)>>8; // square it for more spiky pulse waveform
            cmp = tmp16;
            if (step <= cmp && led1No)  charlie(led1No-1);
            else                        leds_off();
            nop_it(10);
            if (step <= cmp && led2No)  charlie(led2No-1);
            else                        leds_off();
            nop_it(10);
        }
        leds_off();
        go_to_bed(0);       //about 16ms sleep 
        acc -= spd;
    }
}

/**
 * @brief all leds off
 * 
 */
void leds_off()
{
    PORTB &= ~(
        (1 << PB0) |
        (1 << PB2) |
        (1 << PB3) |
        (1 << PB4));
    DDRB &= ~(
        (1 << PB0) |
        (1 << PB2) |
        (1 << PB3) |
        (1 << PB4));
}

/**
 * @brief main charlieplexing function. Using predefined table instead of huge switch
 * 
 * @param var led number
 */
void charlie(uint8_t var)
{
    DDRB = pgm_read_byte(&charlie_table[var][0]);
    PORTB = pgm_read_byte(&charlie_table[var][1]);
}

/**
 * @brief Watchdog interrupt
 * 
 */
ISR(WDT_vect)
{
    // do nothing
}

/**
 * @brief delay using power down mode.
 * 
 * @param time time for the watchdog to sleep. Multiply of 16ms with 9.6MHZ clock
 */
void go_to_bed(uint8_t time)
{
    cli();
    wdt_reset();
    MCUSR &= ~(1 << WDRF);
    WDTCR |= (1 << WDCE) | (1 << WDE);
    WDTCR = (1 << WDTIE) | (time & 0x07);
    sei();
    set_sleep_mode(SLEEP_MODE_PWR_DOWN);
    sleep_enable();
    sleep_cpu();
    // sleepy time
    sleep_disable();
    cli();
    MCUSR &= ~(1 << WDRF);
    WDTCR |= (1 << WDCE) | (1 << WDE);
    WDTCR = 0x00;
    sei();
}

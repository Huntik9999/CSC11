//switch
#include "wiringPi.h"
#include "stdbool.h"
#include "stdio.h"


#define PIN_R 5
#define PIN_G 6
#define PIN_LED 18
#define PIN_BUTTON 16

void rgb (int phase);
void clear (int phase);
int main ()
{
    wiringPiSetupGpio()

    pinMode(PIN_LED, OUTPUT);
    pinMode(PIN_BUTTON, INPUT);

    int ledState = 0;
    int prevBtnState = 0;

    while (1){
        int currentBtnState = digitalRead (PIN_BUTTON);

        if (currentBtnState == 1 && prevBtnStateState == 0){
            printf ("pressed the button\n")
            ledState = !ledState;
            digitalWrite(PIN_LED, HIGH); 
        }


        prevBtnStateState = currentBtnState;

        delay (50);
    }
    return 0;
}

#include "stdio.h"
#include "stdlib.h"
#include "time.h"

int main(){
    srand(time (0));
    
    for (int i = 0; i < 2000; i++)
    {

        int a = rand() % 90 +10; //10 - 99
        printf( "%d\n", a);
        if (a == 99 )break;
    }
}
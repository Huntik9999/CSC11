#include "stdio.h "
int main (){
    float val1 = 3.12323;
    float val2 = 2.64531;
    char *outRes = "The result is: %F\n";

    float s = val1 *val2; 
    printf (outRes, s);
    return 0;
}
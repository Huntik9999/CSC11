#include "stdio.h"

int main() {

	int in;
	int r5 =32;

	printf( "%s", "Enter a number: " );

	scanf( "%d", &in );

	int r2 = r5 + in; 

	printf ( "%d + 32 = %d", in, r2);


	return 0; 


}

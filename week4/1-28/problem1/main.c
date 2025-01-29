#include "stdio.h"

void passbyVal

int main()
{
	int a = 123;
	int b = 100;
	int c = 256;

	printf ("val1: %d\n", a );
 	printf ("val2: %d\n", b );
 	printf ("val3: %d\n", c );

	passbyVal(a, b, c);

	printf ("val1: %d", a );
        printf ("val2: %d", b );
        printf ("val3: %d", c );

	return 0;

}

void passbyVal(int a, int b, int c)
{







}

#include "stdio.h"

int main()
{

	char *outPrompt = "Enter a number between 1-12: ";
	char *outRes = "factorial = %d\n";
	char *inPat = "%d";
	int input = -1;


	while (input <= 0 || input > 12)
	{
		printf(outPrompt);

		scanf(inPat, &input);
	}

	int fact = 1;
	int i = 1;

	while (i <= input){
	fact = fact * i; // 1 * 2 * 3......
	i=i+1;
	}
	printf (outRes, fact);


	return 0;
}

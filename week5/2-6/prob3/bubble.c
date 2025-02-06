#include "stdio.h"

void outArr(int *a, int n){
    for (int i = 0; i < n; i++){
        printf ("%d", a[i]);
    }
    printf ("\n");
}

void input (int a*, int n){
    //for (int i =0; i < n; i++){
    //    printf("enter a[%d]: ", i+1 );
    //    scanf( "%d", &a[i]);
    //}
}
void bubbleSort(int *a, int n){
    int x = n-1;
    for(int i = 0; i< x ; i++){
        for(int j = 0; j < x; j++){
            if (a[j] > a[j+1]){
                int temp = a[j];
                a[j] = a[j+1];
                a[j+1] = temp;
            }
        }
    }
}
int main() 
{
    int len = 5;
    int array [len];

    input (array, len)
    
    
    
    printf ("sorrted array!\n",)

    return 0;
}
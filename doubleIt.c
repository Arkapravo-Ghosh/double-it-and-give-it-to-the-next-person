#include<stdio.h>

void main () {
    printf("Enter a number: ");

    int num;
    scanf("%d", &num);

    //double it and give it to the next person
    printf("Double it and give it to the next person: %d", num * 2);
    
}
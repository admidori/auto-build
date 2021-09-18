#include <stdio.h>

int main(void){
    int year,month,day;
    char name[256];
    printf("Input test\n");
    scanf("%d %d %d %s",year,month,day,name);
    printf("Softwere name: %s\n",name);
    printf("First release date: %d/%d/%d",year,month,day);
    return 0;
}
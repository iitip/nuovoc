#include <stdio.h>

int v[10] = {2,5,2,4,6,7,8,5,7,1};

int main() {
    int a = v[0];
    int b = v[1];
    printf("a: %d\n", a);
    int *addra = &a;
    int *addrb = &b;
    printf("addra: %d\n", addra);
    addrb--;
    printf("addrb: %d\n", addrb);
    int k = *addra;
    printf("addra: %d\n", k);
    printf("addrb: %d\n", *addrb);
}
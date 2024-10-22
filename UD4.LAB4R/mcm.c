#include <stdio.h>

void test_mcm(int a, int b);

int main() {
    int a, b;
    printf("Inserire due numeri: \n");
    scanf("%d%d", &a, &b);
    getchar();
    test_mcm(a, b);
}

void test_mcm(int a, int b) {
    int mcm = a;
    while(mcm % b != 0) {
        //Non multiplo, continua
        mcm += a;
    }
    printf("mcm è %d\n", mcm);
}
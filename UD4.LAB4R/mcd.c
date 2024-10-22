#include <stdio.h>

int main() {
    int a, b;
    printf("Inserire due numeri: \n");
    scanf("%d %d", &a, &b);
    getchar();
    int mcd = a;
    while(mcd >= 1) {
        if(!((a % mcd == 0) && (b % mcd == 0))) {
            mcd--;
        } else {
            break;
        }
    }
    printf("MCD tra %d e %d: %d\n", a, b, mcd);
}
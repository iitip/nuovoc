#include <stdio.h>

int main() {
    char a[5] = "AAAAA";
    int x = 1, y = 0;
    int z = 1;
    for(x < 75; x++;) {
        while(z > -10) {
            y++;
            z--;
            printf("%d %d %d\n", x, y, z);
        }
    }
}
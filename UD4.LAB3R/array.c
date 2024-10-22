#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>


#define MAX_SIZE 10



void stampa_array(int *a, int length);
void ordina_array_tmp(int *a, int length);
void ordina_array_bsort(int *a, int length);

int main() {
    int *arr;
    int l;
    printf("Che lunghezza dare all'array?\n");
    scanf("%d", &l);
    arr = (int *)malloc(l * sizeof(int));
    for(int k = 0; k < l; k++) {
        printf("Inserisci elemento %d:\t", k);
        scanf("%d", &arr[k]);
    }
    getchar();
    stampa_array(arr, l);
    while(1) {
        int algo;
        printf("Che algoritmo per ordinarlo? (1: tmp, 2: bubble sort)\n");
        scanf("%d", &algo);
        getchar();

        if(algo == 1) {
            ordina_array_tmp(arr, l);
        } else if(algo == 2) {
            ordina_array_bsort(arr, l);
        }
    }
    
    
    free(arr);
    return 0;
}

void stampa_array(int *a, int length) {
    for(int k = 0; k < length; k++) {
        //printf("Sizeof(a): %ld\n", sizeof(a));
        printf("%2d\t", a[k]);
    }
    printf("\n");
}

void ordina_array_tmp(int *a, int length) {
    char ord;
    double elapsedTime;
    struct timeval tv1, tv2;
    printf("Vuoi ordinare l'array in modo crescente o decrescente? (c, d)\n");
    scanf("%c", &ord);
    getchar();
    gettimeofday(&tv1, NULL);
    int tmp;
    for(int i = 0; i < length; i++) {
        for(int j = 0; j < i; j++) {
            if(ord == 'c') {
                if(a[i] < a[j]) {
                    //Scambio a[i] con a[j]
                    tmp = a[i];
                    a[i] = a[j];
                    a[j] = tmp;
                }
            } else if(ord == 'd') {
                if(a[i] >= a[j]) {
                    //Scambio a[i] con a[j]
                    tmp = a[i];
                    a[i] = a[j];
                    a[j] = tmp;
                }
            }
            
        }
    }
    gettimeofday(&tv2, NULL);
    elapsedTime = (tv2.tv_sec - tv1.tv_sec) * 1000000 + (tv2.tv_usec - tv1.tv_usec); //in ms
    if(ord == 'c') {
        printf("Array ordinato crescente: \n");
    } else if (ord == 'd') {
        printf("Array ordinato decrescente: \n");
    }
    
    for(int i = 0; i < length; i++) {
        printf("%2d\t", a[i]);
    }
    printf("\n");
    printf("Tempo trascorso con algoritmo di scambio: %f us\n", elapsedTime);
    printf("\n");
}

void ordina_array_bsort(int *a, int length) {
    char ord;
    double elapsedTime;
    struct timeval tv1, tv2;
    printf("Vuoi ordinare l'array in modo crescente o decrescente? (c, d)\n");
    scanf("%c", &ord);
    getchar();
    gettimeofday(&tv1, NULL);
    int tmp;
    int scambio = 1;
    do {
        scambio = 0;
        for(int i = 0; i < length - 1; i++) {
            if(ord == 'c') {
                if(a[i] > a[i + 1]) {
                    tmp = a[i];
                    a[i] = a[i + 1];
                    a[i + 1] = tmp;
                    scambio = 1;
                }
            } else if(ord == 'd') {
                if(a[i] < a[i + 1]) {
                    tmp = a[i];
                    a[i] = a[i + 1];
                    a[i + 1] = tmp;
                    scambio = 1;
                }
            }
        }
    } while(scambio == 1);
    gettimeofday(&tv2, NULL);
    elapsedTime = (tv2.tv_sec - tv1.tv_sec) * 1000000 + (tv2.tv_usec - tv1.tv_usec); //in us
    if(ord == 'c') {
        printf("Array ordinato crescente: \n");
    } else if (ord == 'd') {
        printf("Array ordinato decrescente: \n");
    }
    for(int i = 0; i < length; i++) {
        printf("%2d\t", a[i]);
    }
    printf("\n");
    printf("Tempo trascorso con algoritmo bubblesort: %f us\n", elapsedTime);
    printf("\n");
}
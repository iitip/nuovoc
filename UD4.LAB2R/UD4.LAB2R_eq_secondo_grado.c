/* UD4.LAB2R.c - Controllo di flusso if/else - equazione di 2° grado */

/*
    Questo programma richiede l'inserimento dei 3 coefficienti di un'equazione di secondo grado e restituisce le soluzioni.
*/

#include <stdio.h>           // Inclusione della libreria Standard Input/Output
#include <math.h>

int main() {
    /* Dichiarazione delle variabili */
    double a, b, c;
    double sol1, sol2;
    double delta;

    /* Input dei dati */
    printf("Inserire a: \n");
    scanf("%lf", &a);
    printf("Inserire b: \n");
    scanf("%lf", &b);
    printf("Inserire c: \n");
    scanf("%lf", &c);

    /* Calcoli e output */
    delta = b * b - 4 * a * c;
    if(delta < 0) {
        printf("L'equazione non ammette soluzioni reali.\n");
    } else if (delta == 0) {
        sol1 = -b / (2 * a);
        printf("L'equazione ammette una soluzione reale: %lf\n", sol1);
    } else {
        sol1 = (-b - sqrt(delta)) / (2 * a);
        sol2 = (-b + sqrt(delta)) / (2 * a);
        printf("L'equazione ammette due soluzioni reali, %lf e %lf\n", sol1, sol2);
    }

    /* FINE PROGRAMMA */
    printf("\n\n\nProgramma terminato");
    return 0;
}
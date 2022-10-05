/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   main.c
 * Author: jamie
 *
 * Created on 5. Oktober 2022, 13:25
 */

#include <stdio.h>
#include "calculator.h"


int main() {
    
    printf("Willkommen zum Super-Rechner!\n\nEine Rechnung wurde berechnet: ");
    printf("\n32 im Quadrat wurde berechnet. ");
    printf("\nDas Ergebnis lautet %d\n", calcPow(32,2));
    printf("\nEine Rechnung wurde berechnet:");
    printf("\nDie Quadratwurzel von 225 wurde berechnet. ");
    printf("\nDie Quadratwurzel von 225 beträgt %d. \n", squareRoot(225));
    
    return 0;
}

// mehrere printf gemacht sodass es nicht mehr als 80 Zeichen sind pro Zeile. 

                                                                                 
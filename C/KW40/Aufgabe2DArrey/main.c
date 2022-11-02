/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   main.c
 * Author: jamie
 *
 * Created on 6. Oktober 2022, 09:39
 */

#include <stdio.h>
#include <stdlib.h>
//symbolische Konstante
#define Array länge 15

/*
 * 
 */
#include<stdio.h>
//symbolische Konstante Array-Länge

int main() {

    int arr[5][5] = {
        {0}
    };
    int newValue = 0;
    int x = 0;
    int y = 0;
    int chooseToDo;

    int i, j;
    printf("welcome to the 2D Arrey with coordinations\n");
    printf("---------------------------------------------");


    do {
        printf("\nTwo Dimensional array:\n");
        for (i = 0; i < 5; i++) {
            for (j = 0; j < 5; j++) {
                printf("%d  ", arr[i][j]);
                if (j == 2) {
                }
            }

            printf("\n");
        }
        printf("----------------------\n");




        printf("\nenter a number to do something: 1: change, 2:delete: ");
        scanf("%d", &chooseToDo);
        switch (chooseToDo) {
            case 1:
                printf("give me an x coordinate: ");
                scanf("%d", &x);
                printf("give me an y coordinate: ");
                scanf("%d", &y);
                if (arr[x][y] == 0) {
                    printf("\nx and y is 0, which numner u want to save in that place: ");
                    scanf("%d", &newValue);
                    arr [x][y] = newValue;
                } else {
                    printf("Number is not 0, you can't change it\n");
                }
                printf("\n");
                break;
            case 2:
                printf("give me an x coordinate: ");
                scanf("%d", &x);
                printf("give me an y coordinate: ");
                scanf("%d", &y);
                if (arr[x][y] != 0) {
                    printf("\nx and y is 0, which numner u want to save in that place: ");
                    scanf("%d", &newValue);
                    arr [x][y] = 0;
                }
                printf("\n");
                break;
        }






    } while (1);





    return 0;
}


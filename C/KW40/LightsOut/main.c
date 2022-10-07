#include <stdio.h>
#include "utils.h"

#define FIELD_SIZE 4

int main(void) {
    srand(time(NULL));
    int randomNum;
    int x = 0;
    int y = 0;
    int input1 = 0;
    int input2 = 0;
    int field[FIELD_SIZE][FIELD_SIZE] = {
        {0}
    };
    for (int i = 0; i < FIELD_SIZE * FIELD_SIZE; i++) {




        randomNum = rand() % 2;
        field[x][y] = randomNum;
        y++;
    }


    do {
        printField(FIELD_SIZE, field);

        printf("give me an x coordiante: ");
        scanf("%d", &input1);
        printf("give me an y coordiante: ");
        scanf("%d", &input2);
        input1 = input1 - 1;
        input2 = input2 - 1;

       
        if (field[input1][input2] == 1) {
            field[input1][input2] = 0;
            if (field[input1][input2 - 1] == 1) {
                field[input1][input2 - 1] = 0;
            } else {
                field[input1][input2 - 1] = 1;
            }



            if (field[input1][input2 + 1] == 1) {
                field[input1][input2 + 1] = 0;
            } else {
                field[input1][input2 + 1] = 1;
            }



            if (field[input1 + 1][input2 ] == 1) {
                field[input1 + 1][input2] = 0;
            } else {
                field[input1 + 1][input2 ] = 1;
            }
            if (field[input1 - 1][input2 ] == 1) {
                field[input1 - 1][input2] = 0;
            } else {
                field[input1 - 1][input2 ] = 1;
            }



        } else if (field[input1][input2] == 0) {
            field[input1][input2] = 1;
            if (field[input1][input2 - 1] == 0) {
                field[input1][input2 - 1] = 1;
            } else {
                field[input1][input2 - 1] = 0;
            }



            if (field[input1][input2 + 1] == 0) {
                field[input1][input2 + 1] = 1;
            } else {
                field[input1][input2 + 1] = 0;
            }



            if (field[input1 + 1][input2 ] == 0) {
                field[input1 + 1][input2] = 1;
            } else {
                field[input1 + 1][input2 ] = 0;
            }
            if (field[input1 - 1][input2 ] == 0) {
                field[input1 - 1][input2] = 1;
            } else {
                field[input1 - 1][input2 ] = 0;
            }
        }
    }while (1);
return 0;
}
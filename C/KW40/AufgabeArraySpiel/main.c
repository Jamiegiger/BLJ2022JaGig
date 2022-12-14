#include <stdio.h>
#include "utils.h"

#define FIELD_SIZE 4


int main(void) {
    int position[2];
    int field[FIELD_SIZE][FIELD_SIZE] = {
        { 0, 15,  1, 13},
        { 8,  5,  2,  3},
        {14,  7,  4,  9},
        {10, 11,  6, 12},
    };
    int input = 0;


    do{

        for (int f = 0; f < FIELD_SIZE; f++) {
            for (int p = 0; p < FIELD_SIZE; p++) {
                if (field[f][p] == 0) {
                    position[0] = f;
                    position[1] = p;
                }
            }
        }

        printField(FIELD_SIZE, field);
        scanf("%d", &input);

        if (input == 1) {
            if (position[1] < FIELD_SIZE - 1) {
                swapValues(&field[position[0]][position[1]], &field[position[0]][position[1] + 1]);
            }

        }else if(input == 4){
            if(position[1] > 0) {
                swapValues(&field[position[0]][position[1]], &field[position[0]][position[1] - 1]);
            }

        }else if(input == 2){
            if(position[0] < FIELD_SIZE - 1){
                swapValues(&field[position[0]][position[1]], &field[position[0]+ 1][position[1] ]);

            }

        }else if(input == 3){
            if(position[0] > 0){
                swapValues(&field[position[0]][position[1]], &field[position[0]- 1][position[1] ]);

            }

        }


    }while (input != 0);
        return 0;
    }
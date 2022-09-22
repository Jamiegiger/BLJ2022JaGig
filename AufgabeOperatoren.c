/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   main.c
 * Author: jamie
 *
 * Created on 22. September 2022, 10:36
 */
#include <stdio.h>
int isLeapYear(int year);
int daysInMonth(int month, int year);
void printDateInfo(int month, int year);
int main() {
    int month = 10;
    int year = 1997;
    // todo get user input for month and year 
    // todo third
    
    
    printDateInfo(month, year);
    
    return 0;
}
int isLeapYear(int year){
    if (year % 4) {
        return 0; 
    } else {
        if (year % 400 == 0) {
            return 1;
        }
         if (year % 100 == 0) {
            return 0; }
         return 1;
        }   
}
    
    // todo first
    // returns 1 if isLeapYear
    // returns 0 if is no LeapYear

int daysInMonth(int month, int year){
     // to do second
    // returns 30, 31, 28 or 29
    switch (month) {

            case 1:
            case 3:
            case 5:
            case 7:
            case 8:
            case 10:
            case 12:
                return 31;
                break;


            case 4:
            case 6:
            case 9:
            case 11:
                return 30;
                break;


            case 2:
                if (isLeapYear(year) ==0) {
                    return 28;
                } else {
                    return 29;
                }



               break;



           default:
                printf("Invalid Month.");
                break;
        }
    
    
    
}
void printDateInfo(int month, int year){
    int days = daysInMonth(month, year);
    
    printf("Der Monat %d hat im Jahr %d %d Tage. \n", month, year, days);
    
    printf("Das Jahr %d ist ", year);
    if(!isLeapYear(year)){
        printf("kein ");
    }else{
        printf("ein ");
    }
    printf("Schaltjahr. \n");
}




/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   main.c
 * Author: jamie
 *
 * Created on 15. September 2022, 10:41
 */

#include <stdio.h>
#include <stdlib.h>

/*
 * 
 */
int main(int argc, char** argv) {
    
    printf("jamie giger\t 8610\t Uster\t 0765030406\n");
    // Aufgabe 4.2.1
    unsigned char uc = 1000;
    printf("%d %o %h\n",1000,1000,1000);
    
    //Aufgabe 4.2.2
     float pi = 3.141;
     float r= 2;
     float ergebnis;
     ergebnis=2*r*pi;
     printf("%f\n",ergebnis);
     
     //Aufgabe 4.2.3
     int name=0xff;
     int number=023;
     printf("%d\n",name);
     printf("%d\n",number);
     
     //aufgabe 4.2.6
     double a;
     a = 2 / 3;
     printf("%d",a);
    
     
     
   
    
    
    
    

   return (EXIT_SUCCESS);
}




/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

int result;
int calcPow(int base, int exp){
    if(exp == 0){ return 1; }
    
    int result = base;
    
    while(exp > 1){
        exp--;
        result = result * base;
    }
    
    return result;
}

int squareRoot(int square){
    int c = 2;
    while(c > 1){
        if(c * c  == square){
        break;
        c += 2;
        return c; }
        c++;
    }
    return c;
}
//Lehrschläge einsetzen bei gewissen Operatoren.
// int result hinzufügen.

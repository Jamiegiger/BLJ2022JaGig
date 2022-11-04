
#include <stdio.h>
#include <malloc.h>
#include "functions.h"

void printList(TNode *head) { // Man muss mit dem Element !=NULL arbeiten, dass es fortfährt bis NULL kommt und NULL ist das Ende der Liste.

    TNode *TNode = head;
    while (TNode != NULL) {
        printf("%d\n", TNode->zahl);
        TNode = TNode->next;

    }
}

void newNode(TNode **head) {

    int v = 23;
    for (int i = 0; i < 6; i++) {
        TNode *newNode = malloc(sizeof (TNode));
        newNode->zahl = v + i;
        newNode->next = NULL;



        //
        if (*head == NULL) {
            *head = newNode;



        } else {
            TNode *lastNode = *head;
            while (lastNode->next != NULL) {
                lastNode = lastNode->next;
            }
            lastNode->next = newNode;


        }
    }





}

void delNode(TNode **head, int key) {



    TNode *temp = *head, *prev;



    if (temp != NULL && temp->zahl == key) {
        *head = temp->next;
        free(temp);
        return;
    }

    while (temp != NULL && temp->zahl != key) {
        prev = temp;
        temp = temp->next;
    }
    if (temp == NULL)
        return;
    prev->next = temp->next;

    free(temp);
}




#include <stdio.h>
#include <malloc.h>
#include "functions.h"


int main() {


    struct TNode* head = NULL;
    struct TNode* second = NULL;
    struct TNode* third = NULL;
    struct TNode* fourth = NULL;

    head = (struct TNode*) malloc(sizeof (struct TNode));
    second = (struct TNode*) malloc(sizeof (struct TNode));
    third = (struct TNode*) malloc(sizeof (struct TNode));
    fourth = (struct TNode*) malloc(sizeof (struct TNode));

    head->zahl = 12;
    head->next = second;
    second->zahl = 2;
    second->next = third;
    third->zahl = 187;
    third->next = fourth;
    fourth->zahl = 69;
    fourth->next = NULL;

    // printf("%d", fourth->zahl);



    newNode(&head);
    delNode (&head, 2);
    printList(head);
    return 0;
} 



#ifndef FUNCTIONS_H
#define FUNCTIONS_H
typedef struct TNode {
    int zahl;
    struct TNode *next;

}
TNode;

void printList(TNode *head);
void newNode(TNode **head);
void delNode(TNode **head, int key);


#endif /* FUNCTIONS_H */



#include <stdio.h>
#include <stdlib.h>

struct node{
	struct node* next;
	int dane;
};

struct list{
	struct node* head;

};

struct node* createelement(int data){
	struct node* el = (struct node*) malloc (sizeof(struct node));
	el->dane = data;
	el->next = NULL;
	return el;
}

void addelement(struct list* l ,struct node* el){
	if(l->head == NULL){
		el->next= NULL;
		l->head= el;
	}
	else
	{
		el->next =l->head;
		l->head = el;
	}
}

void addlastelement(struct list *l, struct node* el)
{
	if (l->head == NULL){
		el->next = NULL;
		l->head = el;
	}
	else
	{
		struct node *wsk = l->head;
		while(wsk->next!=NULL)
		wsk = wsk->next; 
		el->next = NULL;
		wsk->next = el; 
		el->next = wsk;
	}
}
int main(){

return 0;
}


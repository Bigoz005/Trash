#include <stdio.h>
#include <stdlib.h>

struct node{
	struct node* next;
	int dane;
};

struct node* createelement(int data){
	struct node* el = (struct node*) malloc (sizeof(struct node));
	el->dane = data;
	el->next = NULL;
	return el;
}

struct node* addend(struct node* root,int data)
{
	struct node *wsk=createelement(data);
	if(root== NULL){
		wsk->next = NULL;
		root = wsk;
	}
	else{
		struct node *wart = root;
		while(wart->next != NULL){
			 wart = wart->next;
		 }
	wsk->next = NULL;
	wart->next = wsk;
	}
}

struct node* addfront(struct node* root,int data)
{
	struct node *wsk=createelement(data);
	if(root == NULL){
		wsk->next = NULL;
		root = wsk;
	}
	else{
	wsk->next = root;
	root = wsk;
	}
}


int main(){
struct node *root= NULL;
addend(root, 15);

free();
return 0;
}

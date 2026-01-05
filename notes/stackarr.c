#include<stdio.h>
#define MAX 10
int stack[MAX];
int top;
void init(){
	top=-1;
}
int isEmpty(){
	return top==-1;
}
int isFull(){
	return top==MAX-1;
}
int stacktop(){
	if(isEmpty()){
		printf("Stack is Empty\n");
		return -1;
	}
	else
		return stack[top];
}
void push(int ele){
	if(isFull()){
		printf("Stack is Full\n");
	}
	else{
		top++;
		stack[top]=ele;
	}
}
int pop(){
	if(isEmpty()){
		printf("Stack is Empty\n");
		return -1;
	}
	else
		return stack[top--];
}
	
int display(){
	if(isEmpty()){
		printf("Stack is Empty\n");
		return -1;
	}
	else{
		printf("The elements in the stack are:\n");
		for(int i=0;i<=top;i++){
			printf("%d",stack[i]);
			printf("\n");
		}
	}
}
int main(){
	init();
	push(10);
	push(20);
	push(30);
	printf("The element popped out is %d",pop());
	push(40);
	display();
	return 0;
}

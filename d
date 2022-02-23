#include<bits/stdc++.h>
using namespace std;
class node{
public:
	int data;
	node* next;
	node(int val){
		data=val;
		next=NULL;
	}
};
void insert(node* &head,int val){
	node* n=new node(val);
	if(head==NULL){
		head=n;
		return;
	}
	node* temp=head;
	while(temp->next!=NULL){
		temp=temp->next;
	}
	temp->next=n;
}
void fun(node* &head,int s){
	vector<int> v;
	node* temp=head;
	while(temp!=NULL){
		v.push_back(temp->data);
		temp=temp->next;
	}
	sort(v.begin(),v.end());
	int i=0;
	node* tem=head;
	while(tem!=NULL){
		tem->data=v[i];
		tem=tem->next;
		i++;
	}
}
void display(node* head){
	node* temp=head;
	while(temp!=NULL){
		cout<<temp->data<<"->";
		temp=temp->next;
	}
	cout<<"NULL"<<endl;
}
int main(){
	node* head=NULL;
	insert(head,19);
	insert(head,20);
	insert(head,16);
	insert(head,24);
	insert(head,12);
	insert(head,29);
	insert(head,30);
	display(head);
	fun(head,7);
	display(head);
	return 0;

//
// Created by vlsi on 13/03/26.
//

#include<iostream>

using namespace std;

void Sum(int, int);
void Sum(int, float);
void Sum(float, float);
void Sum(float, int);

int main()
{
    Sum(20,30);
    Sum(2.3f,3.4f);
    Sum(4.5f,6);
    Sum(5,7.1f);
    return 0;
}

void Sum(int n1, int n2)
{
    cout<<"\nSum: "<<n1+n2<<endl;
}
void Sum(float n1, float n2)
{
    cout<<"\nSum: "<<n1+n2<<endl;
}
void Sum(float n1, int n2)
{
    cout<<"\nSum: "<<n1+n2<<endl;
}
void Sum(int n1, float n2)
{
    cout<<"\nSum: "<<n1+n2<<endl;
}
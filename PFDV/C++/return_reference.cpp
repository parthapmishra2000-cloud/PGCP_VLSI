//
// Created by vlsi on 13/03/26.
//

#include "CPP_1.h"
#include <iostream>


using namespace std;
void modify(int &);

//const float PI = 3.141;

int main()
{
    int num = 10;
    int &temp = num;

    cout<<"\nNum : "<<num<<endl;
    num = 100;
    cout<<"\nTemp : "<<temp<<endl;

    modify(num);
    cout<<"\nModify() :: "<<temp<<endl;
    cout<<endl;

    return 0;.

}
 void modify(int &num) {
    num = 1000;
}
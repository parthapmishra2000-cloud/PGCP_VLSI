//
// Created by vlsi on 13/03/26.
//

#include "inline_func.h"

//
// Created by vlsi on 13/03/26.
//

#include "CPP_1.h"
#include <iostream>


using namespace std;
int inline max(int ,int ) __attribute__((always_inline));
int max2(int ,int );

//const float PI = 3.141;

int main()
{
    const int n1 = 56, n2 =66;



    cout << max(n1,n2)<< endl;
    cout << max2(n1,n2)<< endl;
    /*
    for (int i = 1; i <= 10; i++)
        cout << "5 x "<<i << endl;
    */

    return 0;
}

inline int max(int n1,int n2) __attribute__((always_inline))
{
    return ((n2>n1)?n2:n1);
}

int max2(int n1,int n2)
{
    return ((n2>n1)?n2:n1);
}
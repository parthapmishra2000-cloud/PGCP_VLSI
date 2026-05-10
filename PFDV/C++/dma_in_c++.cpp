//
// Created by vlsi on 13/03/26.
//

#include "dma_in_c++.h"
#include <iostream>
using namespace std;

int main()
{
    int size;
    int *ptr=NULL; 
    cout<<"Enter size: "<<endl;
    cin>>size;

    ptr=new int[size];

    cout<<"Enter values: "<<endl;
    for (int i =0; i<size; i++)
        cin>>ptr[i];
    //ptr=new int[size];
    cout<<"\nValues : "<<endl;
    for (int i =0; i<size; i++)
        cout<<" "<<ptr[i];

    delete [] ptr;

    return 0;
}
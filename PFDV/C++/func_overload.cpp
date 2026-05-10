//
// Created by vlsi on 13/03/26.
//

#include "func_overload.h"
#include <iostream>

#define PI 3.14159265358979323846

using namespace std;


float area(float );
int area(int ,int );
float area(float, float );

int main()
{
    int length,breadth;
    float radius,height, base;

    cout<<"Enter the length and breadth of the Rectangle :"<<endl;
    cin>>length>>breadth;

    int rect_area = area(length,breadth);
    cout<<"The area of the rectangle is "<<rect_area<<endl;

    cout<<"\nEnter the radius of the circle :"<<endl;
    cin>>radius;

    float circle_area = area(radius);
    cout<<"The area of the circle is "<<circle_area<<endl;

    cout<<"\nEnter the base and height of the rectangle :"<<endl;
    cin>>base>>height;

    float trian_area = area(height,base);
    cout<<"The area of the triangle is "<<trian_area<<endl;

    return 0;
}
float area(float radius)
{
    return PI * radius * radius;
}

float area(float height, float base)
{
    return 0.5 * height * base;
}

int area(int lenght, int breadth) {
    return lenght * breadth;
}

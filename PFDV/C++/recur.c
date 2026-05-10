#include <stdio.h>

void display(int);

int main()
{
	display(4);
}

void display(int n)
{
	if (n!=0)
	{
		printf("\n Hello");
		display(n-1);
	}
	else
		return;

}

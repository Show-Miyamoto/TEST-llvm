#include <stdio.h>

void func1(void);

int main(void)
{
	printf("私は");
	func1();
	printf("好きです");
	return 0;
}

void func1(void)
{
	printf("Cが");
}


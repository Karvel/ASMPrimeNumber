/*
Elanna Grossman
Prime number checker program - C++
*/

#include <iostream>

extern "C" int _stdcall prime(int);

using namespace std;

int main(int argc, char**argv)
{

	int inputNum = atoi(argv[1]);
	int isPrime;

	isPrime = prime(inputNum);

	if (isPrime == 1)
	{
		cout << "Number is prime." << endl;
	}//end if

	else
	{
		cout << "Number is not prime." << endl;
	}//end ekse

	return 0;
}//end main
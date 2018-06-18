//количество нулей в факториале числа "в лоб"
#include <iostream>
using namespace std;

int fact (int n)
	{if(n < 0) 
        return 0; 
    if (n == 0) 
        return 1; 
    if (n > 0) 
        return n * fact(n - 1); 
	}
	
int zero_count (int a)
{int i = 0;
while(a!=0){
         if((a%10)==0) 
		 {i++;
		 a/=10; }
		 else return i; 
}}

int main()
{
    int n;
    cout << "n = ";
    cin >> n;
    cout << "n! = " << fact(n)<< endl; 
    cout << "n! ends with "<< zero_count(fact (n))<< " zero";
    return 0;
}

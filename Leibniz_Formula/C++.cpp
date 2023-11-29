#include <cstdio>
#include <iostream>
#include <float.h>
#include <iomanip>

int main()
{
    // 10^18 - 1000000000000000000
    unsigned long long int loop = 1000000000000000000;
    unsigned long long int denominator = 1;
    long double pi = 0;
    const int constant = 4;
    for (int i = 0; i < loop; i++)
    {
        if (i % 2 == 0)
        {
            float temp = (long double)constant/denominator;
            pi += temp;
        }
        else
        {
            pi -= (long double)constant/denominator;
        } 
        denominator += 2;
    }
    std::cout << std::setprecision (30) << pi << std::endl;
    std::cout << pi << std::endl;

}

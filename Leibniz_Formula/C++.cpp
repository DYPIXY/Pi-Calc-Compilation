#include <cstdio>
#include <iostream>
#include <float.h>

int main(){
    unsigned long long int loop = 1000000000000000000;
    unsigned long long int denominator = 1;
    long double pi = 0;
    const int constant = 4;
    for (int i = 0; i <= loop; i++) {
        if (i % 2 == 0) {
            float temp = (long double)constant/denominator;
            pi += temp;
        } else {
            //if i just put 4 instead of this constants converted to long double, it'll return an int type
            pi -= ((long double)constant/denominator);
        } 
        denominator += 2;
    }
    //std::cout << std::fixed;
    std::cout.precision(LDBL_DIG);
    std::wcout << pi << std::endl;

}

//This is just a test, since is my first time really programming in C++

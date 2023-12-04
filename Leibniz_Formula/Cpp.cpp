#include <iomanip>
#include <iostream>
#include <gmpxx.h>

int main()
{
    // 10^18 - 1000000000000000000
    unsigned long long int loop = 10000000000;
    mpz_t numerator;
    mpz_init_set_ui(numerator, 4);
    mpz_t denominator;
    mpz_init_set_ui(denominator, 1);
    mpf_t pi;
    mpf_init(pi);
    mpq_t tempFrac;
    mpq_init(tempFrac);
    mpf_t tempFloat;
    mpf_init(tempFloat);
    
    for (unsigned long long i = 0; i < loop; i++)
    {
        mpq_set_num(tempFrac, numerator);
        mpq_set_den(tempFrac, denominator);
        mpq_canonicalize(tempFrac);
        mpf_set_q(tempFloat, tempFrac);
        if (i % 2 == 0)
        {
            mpf_add(pi, pi, tempFloat);
        }
        else
        {
            mpf_sub(pi, pi, tempFloat);
        }
        mpz_add_ui(denominator, denominator, 2);
    }

    gmp_printf ("Pi: %.Ff", pi);
}

#include <stdio.h>

int main(){

    extern long fibonacci(long f);

    printf("O fibonacci de 8 eh: %ld\n", fibonacci(8));
    return 0;
}
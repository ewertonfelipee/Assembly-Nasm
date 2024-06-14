#include <stdio.h>

extern int PassaParam(int a, int b, int c, int d, int e, int f, int g);

int main(){

    printf("Foi retornado: %d\n", PassaParam(100, 32, 99, 53, 37, 200, 65));
    return 0;
}
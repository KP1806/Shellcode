#include <stdio.h>
#include <string.h>

int main(int argc, char **argv)
{
    if (argc < 2) {
        printf("Veuillez indiquer un shellcode.");
        return 1;
    }
    else {
        printf("Taille du shellcode : %zu",  strlen(argv[1]));
        printf("Shellcode : %s", argv[1]);

        int (*funct)();
        funct = (int (*)()) argv[1];
        (int)(*funct)();

        return 0;
    }
    
    
}
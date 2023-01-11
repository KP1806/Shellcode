#include <stdio.h>
#include <string.h>

int main(int argc, char **argv)
{   
    int (*funct)();
    funct = (int (*)()) argv[1];
    (int)(*funct)();
    
    return 0;
}
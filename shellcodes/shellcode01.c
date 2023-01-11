#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>

void main() {
    char cmd[] = "/bin/sh";
    
    execve(cmd, NULL, NULL);
    exit(0);
}
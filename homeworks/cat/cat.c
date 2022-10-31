#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>

int main(){
    char buf[512];
    int n;

    for(;;){
       n = read(0, buf, sizeof buf);
        if(n == 0)
            break;
        if(n < 0){
            fprintf(stdout, "read error\n");
            exit(-1); 
        }
       if(write(1, buf, n) != n){
            fprintf(stdout, "write error\n");
            exit(-1);
        }  
    }

    exit(0); 
}
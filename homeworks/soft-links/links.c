#include <stdlib.h>
#include <sys/fcntl.h>
#include <unistd.h>
#include <fcntl.h>


int main(){
    // fdA is a file descripter 
    int fdA = open("/Users/haohua/Documents/GitHub/dosei-os/homeworks/soft-links/fileA", O_CREAT | O_WRONLY); 
    link("/Users/haohua/Documents/GitHub/dosei-os/homeworks/soft-links/fileA", "/Users/haohua/Documents/GitHub/dosei-os/homeworks/soft-links/fileB"); 

    char msg[] = "Hello World!\n"; 
    write(fdA, msg, sizeof(msg) - 1);
    close(fdA); 
    unlink("/Users/haohua/Documents/GitHub/dosei-os/homeworks/soft-links/fileA");
}
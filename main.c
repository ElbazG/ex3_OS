#include <string.h>
#include <stdlib.h>
#include <fcntl.h>
#include <stdio.h>
#include <sys/unistd.h>
#define SIZE 100

void to_lower(char* ch);
int compare(char* first, char* second){
    if (strcmp(first,second)==0)
        return 1;
    else return 2;
}
int main(int argc, char* argv[]){
    if (argc != 3){
        perror("Error: Arguments problem");
    }
    int fd,fd2;
    char buf[SIZE];
    char buf2[SIZE];
    fd = open(argv[1],O_RDONLY);
    if (fd < 0){
        perror("Error");
    }
    fd2 = open(argv[2],O_RDONLY);
    if (fd2 < 0){
        perror("Error");
    }
    read(fd,buf,100);
    read(fd2,buf2,100);
    close(fd);
    close(fd2);
    return compare(buf, buf2);
}
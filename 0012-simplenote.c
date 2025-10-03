#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <fcntl.h>
#include <sys/stat.h>

void usage (char *program_name, char *file_name) {
    printf("Usage: %s <data to add to %s>\n",program_name, file_name);
    exit(0);
}

void fatal(char *);
void ec_malloc (unsigned int); // an error-checked malloc() wrapper

int main (int argc, char *argv[]) {
    int fd; //file descriptor
    char *buffer, *datafile;

    buffer = (char *) ec_malloc(100);
    datafile = (char *) ec_malloc(20);
    strcpy(datafile, "/tmp/notes");

    if(argc < 2)
        usage(argv[0], datafile);

    strcpy(buffer, argv[1]);

    printf("[DEBUG] buffer @ %p \'%s\'\n",buffer, buffer);
    printf("[DEBUG] datafile @ %p \'%s\'\n",datafile, datafile);

    strncat (buffer, "\n", 1); // add a newline to the end

    return 0;
}

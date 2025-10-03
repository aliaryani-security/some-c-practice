#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <fcntl.h>
#include <sys/stat.h>
#include <unistd.h>

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
    
    // opening file
    fd = open(datafile, O_WRONLY|O_CREAT|O_APPEND, S_IRUSR|S_IWUSR);
    if (fd == -1) 
        fatal("in main() while opening file");
    printf("[DEBUG] file descriptor is %d\n", fd);

    // writing data
    if(write(fd, buffer, strlen(buffer)) == -1)
        fatal ("in main() while writing buffer to file");

    // closing file
    if(close(fd) == -1)
        fatal("in main() while closing file");

    printf("Note has been saved.\n");
    free(buffer);
    free(datafile);

    return 0;
}

// a function to show error message and exit
void fatal (char *message) {
    char error_msg[100];

    strcpy(error_msg, "[!!] FATAL ERROR ");
    strncat(error_msg, message, 83);
    perror(error_msg);
    exit(-1);
}

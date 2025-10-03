#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <fcntl.h>
#include <sys/stat.h>

void usage (char *program_name, char *file_name) {
    printf("Usage: %s <data to add to %s>\n",program_name, file_name);
    exit(0);
}

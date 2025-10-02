#include <stdio.h>
#include <string.h>

int main() {
    char str_a[20];
    char *pointer;
    char *pointer2;

    strcpy(str_a, "Hello World!\n");
    pointer = str_a;
    puts(pointer);

    pointer2 = pointer + 2;
    puts(pointer2);
    strcpy(pointer2,"y you guys!\n");
    puts(pointer);
    return 0;
}

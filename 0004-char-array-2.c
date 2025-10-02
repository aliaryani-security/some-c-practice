#include <stdio.h>
#include <string.h>

int main () {
    char str_a[20];

    strcpy(str_a, "Hello World!\n"); // strcpy will iterate through string and copy each element
                                     // into the given character array (i.e. str_a in here)
    puts(str_a);
    return 0;
}

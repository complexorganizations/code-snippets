#include <limits.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

// Get the current system hostname.
char *get_hostname() {
    char *hostname = malloc(HOST_NAME_MAX);
    gethostname(hostname, HOST_NAME_MAX);
    return hostname;
}

int main() {
    // Get the current system hostname.
    printf("Hostname: %s\n", get_hostname());
    return 0;
}

#include <stdio.h>

// A simple loop that will not break.
void simple_loop() {
    int i;
    for (i = 0; i < 10; i++) {
        printf("%d\n", i);
    }
}

// A loop with a break condition.
void loop_break() {
    int i;
    for (i = 0; i < 10; i++) {
        if (i == 5) {
            break;
        }
        printf("%d\n", i);
    }
}

// A loop with a continue condition.
void loop_continue() {
    int i;
    for (i = 0; i < 10; i++) {
        if (i == 5) {
            continue;
        }
        printf("%d\n", i);
    }
}

int main() {
    // A simple for loop
    simple_loop();
    // A loop with a break condition
    loop_break();
    // A loop with a continue condition
    loop_continue();
    return 0;
}

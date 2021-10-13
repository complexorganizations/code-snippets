#include <cstdbool>
#include <iostream>

// Int
void int_variable() {
    int a = 0;
    printf("%d\n", a);
    int b = 1;
    printf("%d\n", b);
    int c = 2;
    printf("%d\n", c);
    int d = 3;
    printf("%d\n", d);
    int e = 4;
    printf("%d\n", e);
    int f = 5;
    printf("%d\n", f);
}

// Float
void float_variable() {
    float a = 0.0;
    printf("%f\n", a);
    float b = 1.0;
    printf("%f\n", b);
    float c = 2.0;
    printf("%f\n", c);
    float d = 3.0;
    printf("%f\n", d);
    float e = 4.0;
    printf("%f\n", e);
    float f = 5.0;
    printf("%f\n", f);
}

// String
void string_variable() {
    char a[] = "Hello";
    printf("%s\n", a);
    char b[] = "World";
    printf("%s\n", b);
    char c[] = "!";
    printf("%s\n", c);
    char d[] = "!";
    printf("%s\n", d);
    char e[] = "!";
    printf("%s\n", e);
    char f[] = "!";
    printf("%s\n", f);
}

// Boolean
void boolean_variable() {
    bool a = true;
    printf("%d\n", a);
    bool b = false;
    printf("%d\n", b);
    bool c = true;
    printf("%d\n", c);
    bool d = false;
    printf("%d\n", d);
    bool e = true;
    printf("%d\n", e);
    bool f = false;
    printf("%d\n", f);
}

int main() {
    // Integer variable
    int_variable();
    // Float variable
    float_variable();
    // String variable
    string_variable();
    // Boolean variable
    boolean_variable();
    return 0;
}

/*
Escape Sequences Characters
\b Backspace
\f Form feed
\n Newline
\r Return
\t Horizontal tab
\v Vertical tab
\\ Backslash
\' Single quotation mark
\" Double quotation mark
\? Question mark
\0 Null Character
*/

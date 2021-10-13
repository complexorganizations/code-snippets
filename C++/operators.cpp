#include <cstdbool>
#include <iostream>

// Example of a == operator
void equalsOperator() {
    // == Operator checks if the values of two operands are equal.
    int a = 1;
    int b = 1;
    if (a == b) {
        printf("%d %d", a, b);
    }
}

// Example of a != operator
void notEqualsOperator() {
    // != Operator checks if two values are not equal.
    int a = 1;
    int b = 1;
    if (a != b) {
        printf("%d %d", a, b);
    }
}

// Example of a || operator
void orOperator() {
    // || Operator checks if one of two operands is true.
    int a = true;
    int b = false;
    if (a || b) {
        printf("%d %d", a, b);
    }
}

// Example of a && operator
void andOperator() {
    // && Operator checks if both operands are true.
    int a = true;
    int b = false;
    if (a && b) {
        printf("%d %d", a, b);
    }
}

// Example of a ! operator
void notOperator() {
    // ! Operator checks if the operand is false.
    int a = true;
    int b = false;
    if (!a) {
        printf("%d %d", a, b);
    }
}

// Example of a > operator
void greaterThanOperator() {
    // > Operator checks if the left operand is greater than the right operand.
    int a = 1;
    int b = 2;
    if (a > b) {
        printf("%d %d", a, b);
    }
}

// Example of a < operator
void lessThanOperator() {
    // < Operator checks if the left operand is less than the right operand.
    int a = 1;
    int b = 2;
    if (a < b) {
        printf("%d %d", a, b);
    }
}

// Example of a >= operator
void greaterThanOrEqualOperator() {
    // >= Operator checks if the left operand is greater than or equal to the right operand.
    int a = 1;
    int b = 2;
    if (a >= b) {
        printf("%d %d", a, b);
    }
}

// Example of a <= operator
void lessThanOrEqualOperator() {
    // <= Operator checks if the left operand is less than or equal to the right operand.
    int a = 1;
    int b = 2;
    if (a <= b) {
        printf("%d %d", a, b);
    }
}

// Example of a + operator
void plusOperator() {
    // + Operator adds two operands.
    int a = 1;
    int b = 2;
    int c = a + b;
    printf("%d %d %d", a, b, c);
}

// Example of a - operator
void minusOperator() {
    // - Operator subtracts the right operand from the left operand.
    int a = 1;
    int b = 2;
    int c = a - b;
    printf("%d %d %d", a, b, c);
}

// Example of a * operator
void multiplyOperator() {
    // * Operator multiplies two operands.
    int a = 1;
    int b = 2;
    int c = a * b;
    printf("%d %d %d", a, b, c);
}

// Example of a / operator
void divideOperator() {
    // / Operator divides the left operand by the right operand.
    int a = 1;
    int b = 2;
    int c = a / b;
    printf("%d %d %d", a, b, c);
}

// Example of a % operator
void modulusOperator() {
    // % Operator returns the remainder of the left operand divided by the right operand.
    int a = 1;
    int b = 2;
    int c = a % b;
    printf("%d %d %d", a, b, c);
}

// Example of a ++ operator
void incrementOperator() {
    // ++ Operator increments the operand by 1.
    int a = 1;
    int b = a++;
    printf("%d %d", a, b);
}

// Example of a -- operator
void decrementOperator() {
    // -- Operator decrements the operand by 1.
    int a = 1;
    int b = a--;
    printf("%d %d", a, b);
}

// Example of a += operator
void plusEqualsOperator() {
    // += Operator adds the right operand to the left operand and assigns the result to the left operand.
    int a = 1;
    int b = 2;
    a += b;
    printf("%d %d", a, b);
}

// Example of a -= operator
void minusEqualsOperator() {
    // -= Operator subtracts the right operand from the left operand and assigns the result to the left operand.
    int a = 1;
    int b = 2;
    a -= b;
    printf("%d %d", a, b);
}

// Example of a *= operator
void multiplyEqualsOperator() {
    // *= Operator multiplies the left operand by the right operand and assigns the result to the left operand.
    int a = 1;
    int b = 2;
    a *= b;
    printf("%d %d", a, b);
}

// Example of a /= operator
void divideEqualsOperator() {
    // /= Operator divides the left operand by the right operand and assigns the result to the left operand.
    int a = 1;
    int b = 2;
    a /= b;
    printf("%d %d", a, b);
}

// Example of a %= operator
void modulusEqualsOperator() {
    // %= Operator assigns the remainder of the left operand divided by the right operand to the left operand.
    int a = 1;
    int b = 2;
    a %= b;
    printf("%d %d", a, b);
}

// Example of a <<= operator
void leftShiftEqualsOperator() {
    // <<= Operator shifts the bits of the left operand left by the number of bits specified by the right operand.
    int a = 1;
    int b = 2;
    a <<= b;
    printf("%d %d", a, b);
}

// Example of a >>= operator
void rightShiftEqualsOperator() {
    // >>= Operator shifts the bits of the left operand right by the number of bits specified by the right operand.
    int a = 1;
    int b = 2;
    a >>= b;
    printf("%d %d", a, b);
}

// Example of a &= operator
void andEqualsOperator() {
    // &= Operator performs a bitwise AND operation on the left operand and the right operand and assigns the result to the left operand.
    int a = 1;
    int b = 2;
    a &= b;
    printf("%d %d", a, b);
}

// Example of a ^= operator
void xorEqualsOperator() {
    // ^= Operator performs a bitwise XOR operation on the left operand and the right operand and assigns the result to the left operand.
    int a = 1;
    int b = 2;
    a ^= b;
    printf("%d %d", a, b);
}

// Example of a |= operator
void orEqualsOperator() {
    // |= Operator performs a bitwise OR operation on the left operand and the right operand and assigns the result to the left operand.
    int a = 1;
    int b = 2;
    a |= b;
    printf("%d %d", a, b);
}

int main() {
    // == Operator
    equalsOperator();
    // != Operator
    notEqualsOperator();
    // && Operator
    andOperator();
    // ! Operator
    notOperator();
    // > Operator
    greaterThanOperator();
    // < Operator
    lessThanOperator();
    // >= Operator
    greaterThanOrEqualOperator();
    // <= Operator
    lessThanOrEqualOperator();
    // + Operator
    plusOperator();
    // - Operator
    minusOperator();
    // * Operator
    multiplyOperator();
    // / Operator
    divideOperator();
    // % Operator
    modulusOperator();
    // ++ Operator
    incrementOperator();
    // -- Operator
    decrementOperator();
    // += Operator
    plusEqualsOperator();
    // -= Operator
    minusEqualsOperator();
    // *= Operator
    multiplyEqualsOperator();
    // /= Operator
    divideEqualsOperator();
    // %= Operator
    modulusEqualsOperator();
    // <<= Operator
    leftShiftEqualsOperator();
    // >>= Operator
    rightShiftEqualsOperator();
    // &= Operator
    andEqualsOperator();
    // ^= Operator
    xorEqualsOperator();
    // |= Operator
    orEqualsOperator();
    return 0;
}

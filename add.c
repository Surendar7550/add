#include <stdio.h>

// Function to add two numbers
int add(int a, int b) {
    return a + b;
}

int main() {
    int num1 = 5, num2 = 10;

    printf("The sum of %d and %d is: %d\n", num1, num2, add(num1, num2));

    return 0;
}


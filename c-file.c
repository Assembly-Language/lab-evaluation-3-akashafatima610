#include <stdio.h>
#include <conio.h>

#ifdef __cplusplus
extern "C" {
#endif

int __stdcall count(int* p1, int p2);

#ifdef __cplusplus
}
#endif

#define MAX_SIZE 1000 // Define a maximum size for the array

int main() {
    system("cls");
    int num;

    printf("Enter the number of elements: ");
    scanf("%d", &num);

    if (num <= 0 || num > MAX_SIZE) {
        printf("Invalid number of elements. Must be between 1 and %d.\n", MAX_SIZE);
        return 1;
    }

    int user_array[MAX_SIZE]; // Use a fixed-size array with a defined maximum size

    printf("Enter %d numbers: ", num);
    for (int i = 0; i < num; i++) {
        scanf("%d", &user_array[i]);
    }

    int positive_count = count(user_array, num);
    printf("Total number of positive values in the array is: %d\n", positive_count);
    getch();

    printf("Back to C!\n"); // Printing in C

    return 0;
}

// ## Program 2: Perform Mathematical Operations with Functions
// Write a Dart program that performs two mathematical operations using functions.
import 'dart:io'; // Import dart:io for user input

// Function for addition with error handling
int add(int a, int b) {
 
  try {
    return a + b;
  } on FormatException {
    print("Error: Invalid input. Please enter numbers only.");
    return 0; // Handle invalid input gracefully (optional)
  }
}

// Function for multiplication
int multiply(int a, int b) {
  
  return a * b;
}

void main() {
  print("Enter the first number: ");
  String input1 = readLineSync()!;

  print("Enter the second number: ");
  String input2 = readLineSync()!;

  // Convert input to integers with clear error handling
  int num1;
  try {
    num1 = int.parse(input1);
  } on FormatException {
    print("Error: Invalid input for first number. Please enter a number.");
    return; // Exit program if input is invalid
  }

  int num2;
  try {
    num2 = int.parse(input2);
  } on FormatException {
    print("Error: Invalid input for second number. Please enter a number.");
    return; // Exit program if input is invalid
  }

  int sum = add(num1, num2);
  int product = multiply(num1, num2);

  print("The sum of $num1 and $num2 is: $sum");
  print("The product of $num1 and $num2 is: $product");
}

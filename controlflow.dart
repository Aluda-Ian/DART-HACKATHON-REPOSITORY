//  Program 3: Determine Grade Based on Marks
// Write a Dart program to determine the grade based on a student's marks. The program should print out the appropriate grade according to the following criteria:
// - If the marks are greater than 85, print "Excellent".
// - If the marks are between 75 and 85 (inclusive), print "Very Good".
// - If the marks are between 65 and 75 (inclusive), print "Good".
// - If the marks are below 65, print "Average".
import 'dart:io';
void main() {
  print("Enter the student's marks (0-100): ");
  int marks = int.parse(readLineSync()!);

  String grade = "";
  if (marks > 85) {
    grade = "Excellent";
  } else if (marks >= 75) {
    grade = "Very Good";
  } else if (marks >= 65) {
    grade = "Good";
  } else {
    grade = "Average";
  }

  print("Grade: $grade");
}


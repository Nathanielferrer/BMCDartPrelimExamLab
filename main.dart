import 'dart:io';

void main() { 
    const higherGrade = 100; 
    const assignmentWeight = 0.2;
    const midtermWeight = 0.3;
    const finalExamWeight = 0.5; 

    print("Enter Your Name");
    String? name = stdin.readLineSync();

    print("Enter Assignment Score");
    double? assignScore = double.parse(stdin.readLineSync()!);

    print("Enter Midterm Score");
    double? midtermScore = double.parse(stdin.readLineSync()!);

    print("Enter Final Score");
    double? finalScore = double.parse(stdin.readLineSync()!);

    try {
        print("Input is valid");
    } catch (e) {
        print("Error: Please enter a valid number. $e");
    }

    double weightedAverage = (assignScore + midtermScore + finalScore) / 3;

    if (weightedAverage >= passingGrade) {
        print("My name is $name");
        print("My score in assignment is $assignScore");
        print("My score in midterm is $midtermScore");
        print("My score in final is $finalScore");
        print("Your Final Grade is $weightedAverage: Passed");
    } else {
        print("My name is $name");
        print("My score in assignment is $assignScore");
        print("My score in midterm is $midtermScore");
        print("My score in final is $finalScore");
        print("Your Final Grade is $weightedAverage: failed");
    }
}
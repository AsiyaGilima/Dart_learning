import "package:dart_learning/grade_calculator.dart";

import 'dart:io';

void main() {
  /*String studentName1 = 'Shuku';
  int score1 = 90;

  String studentName2 = 'Amira';
  int score2 = 64;

  print('Student Name: $studentName1');
  print('Student Score: $score1');
  print('Student Grade: ${calculateGrade(score1)}');
  print("---------------");

  print('Student Name: $studentName2');
  print('Student Score: $score2');
  print('Student Grade: ${calculateGrade(score2)}');

  ......................................... list and loop
  List<String> students = [
    'Fatima',
    'Zahra',
    'Maryam',
    'Halima',
    'Asmau',
    'Amira',
  ];
  List<int> scores = [80, 74, 100, 89, 45, 59];

  for (int i = 0; i < students.length; i++) {
    print('Student Name: ${students[i]}');
    print('Student Score: ${scores[i]}');
    print('Student Grade: ${calculateGrade(scores[i])}');
    print("-------------------");
  }*/
  stdout.write('Enter student name: ');
  String studentName = stdin.readLineSync() ?? '';

  stdout.write('Enter student Score:');
  int score = int.tryParse(stdin.readLineSync() ?? '') ?? -1;

  String grade = calculateGrade(score);

  print('\nStudent Name: $studentName');
  print('Score: $score');
  print('Grade: $grade');
  print('----------------------');
}

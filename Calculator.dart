import 'dart:io';

void main() {
  print('=== Simple Calculator ===');

  print('Enter first Number:');
  double num1 = double.parse(stdin.readLineSync()!);

  print('Enter an Operator (+, -, *, /):');
  String operator = stdin.readLineSync()!;

  print('Enter Second Number:');
  double num2 = double.parse(stdin.readLineSync()!);

  double result;

  switch (operator) {
    case '+':
      result = num1 + num2;
      break;

    case '-':
      result = num1 - num2;
      break;

    case '*':
      result = num1 * num2;
      break;

    case '/':
      if (num2 == 0) {
        print('Error: Cannot divide by zero.');
        return;
      }
      result = num1 / num2;
      break;

    default:
      print('invalid Operator.');
      return;
  }
  print('Result: $num1 $operator $num2 = $result');
}

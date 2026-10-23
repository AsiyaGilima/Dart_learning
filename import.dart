import 'dart:io';
void main() {
  print('what is your name');
  String? name = stdin.readLineSync();
  
  print('how old are you');
  String? age = stdin.readLineSync();

  print('hello $name');
  print('I am $age');
  
}


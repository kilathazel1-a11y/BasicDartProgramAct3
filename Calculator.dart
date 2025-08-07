import 'dart:io';

void main() {
  print('Simple Dart Program');
  print('------------------------');

  stdout.write('Enter first number: ');
  double num1 = double.parse(stdin.readLineSync()!);

  stdout.write('Enter operator (+, -, *, /): ');
  String operator = stdin.readLineSync()!;

  stdout.write('Enter second number: ');
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
        print('Error: Division by zero is not allowed.');
        return;
      }
      result = num1 / num2;
      break;
    default:
      print('Invalid operator');
      return;
  }

  print('Result: $num1 $operator $num2 = $result');
}

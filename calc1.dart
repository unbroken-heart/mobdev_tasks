import 'dart:io';

void main() {
  print('=== Simple Dart Calculator ===');

  while (true) {
    stdout.write('enter number (or "quit"): ');
    String input1 = stdin.readLineSync()!;
    if (input1.toLowerCase() == 'quit') break;

    stdout.write('Enter operator (+, -, *, /): ');
    String op = stdin.readLineSync()!;

    stdout.write('Enter second number: ');
    String input2 = stdin.readLineSync()!;

    double num1 = double.parse(input1);
    double num2 = double.parse(input2);
    double result = calculate(num1, num2, op);
    print('Result: $result');
  }
}

double calculate(double a, double b, String op) {
  switch (op) {
    case '+': return a + b;
    case '-': return a - b;
    case '*': return a * b;
    case '/':
      if (b == 0) throw Exception('Cannot divide by zero');
      return a / b;
    default: throw Exception('Invalid operator: $op');
  }
}
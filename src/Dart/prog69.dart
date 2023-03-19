import 'dart:io';

void main() {
  stdout.write("Enter a number: ");
  int n1 = int.parse(stdin.readLineSync()!);
  print("Double it and give it to the next person: ${n1 * 2}");
}

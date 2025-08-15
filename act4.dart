import 'dart:io';

void main() {
  stdout.write("Name: ");
  String name = stdin.readLineSync() ?? '';

  stdout.write("Email: ");
  String email = stdin.readLineSync() ?? '';

  stdout.write("Subject: ");
  String subject = stdin.readLineSync() ?? '';

  stdout.write("Course: ");
  String course = stdin.readLineSync() ?? '';

  print("\n== Summary ==");
  print("Name   : $name");
  print("Email  : $email");
  print("Subject: $subject");
  print("Course : $course");
}

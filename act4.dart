import 'dart:io';

void main() {
//name
stdout.write("Enter your name: ");
String? name = stdin.readLineSync();
while (name == null || name.trim().isEmpty) {
stdout.write("Name cannot be empty. Enter your name: ");
name = stdin.readLineSync();
}

//email
stdout.write("Enter your email: ");
String? email = stdin.readLineSync();
while (email == null || !isValidEmail(email)) {
stdout.write("Invalid email. Enter a valid email: ");
email = stdin.readLineSync();
}

//subject
stdout.write("Enter your subject: ");
String? subject = stdin.readLineSync();
while (subject == null || subject.trim().isEmpty) {
stdout.write("Subject cannot be empty. Enter your subject: ");
subject = stdin.readLineSync();
}

//validate course
stdout.write("Enter your course: ");
String? course = stdin.readLineSync();
while (course == null || course.trim().isEmpty) {
stdout.write("Course cannot be empty. Enter your course: ");
course = stdin.readLineSync();
}

//output
print("\n== Summary Output ==");
print("Name : $name");
print("Email : $email");
print("Subject: $subject");
print("Course : $course");
}

//email function
bool isValidEmail(String email) {
final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
return emailRegex.hasMatch(email);
}
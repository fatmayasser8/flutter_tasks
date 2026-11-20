import 'dart:io';
void main(){
  stdout.write('Enter first number: ');
  num? first_number = num.tryParse(stdin.readLineSync()!);
  stdout.write('Enter second number: ');
  num? second_number = num.tryParse(stdin.readLineSync()!);
  stdout.write(' Enter operation(+, -, *, /):');
  String? operation=stdin.readLineSync();
  if (first_number == null || second_number == null) {
    print('Invalid number');
  }
  else if(operation=='+'){
    stdout.write( ' Result:${first_number + second_number}');
  }
  else if(operation=='-'){
    stdout.write( ' Result:${first_number-second_number}');
  }
  else if(operation=='*'){
    stdout.write( ' Result:${first_number*second_number}');
  }
  else if (operation == '/') {
    if (second_number == 0) {
      print('Cannot divide by zero');
    }
    else {
      stdout.write('Result: ${first_number / second_number}');
    }
  }
  else {
    print('Invalid operation');
  }

}

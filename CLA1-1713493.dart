import 'dart:io';

void main() {
  /// make input into  list
  /// list must accept data type double or int, else return error
  /// after succesfully listed, perform mathematical operation on the list

  bool eflag = false;
  dynamic lst; 
  var input;

  do {
    stdout.write("Input a list of numbers, comma separated:");
    input = stdin.readLineSync();
    lst = input.split(",");

    try {
      lst = lst.map(int.parse).toList();
      eflag = true;
    } catch (e) {
      print("int conversion failed");
      try {
        lst = lst.map(double.parse).toList();
        eflag = true;
      } catch (e) {
        print("double conversion failed");
        print(
            "Your input has a member that is not of type int or double, Please reenter");
      }
    }
  } while (eflag == false);

  //summming
  dynamic sum = 0;
  for (var item in lst) {
    sum += item;
  }
  print('Sum: $sum');

  // average
  var avg = sum / lst.length;
  print('Average: $avg');

  //division
  var lstdiv = lst.first;
  for (int i = 1; i < lst.length; i++) {
    lstdiv /= lst[i];
  }
  print('Divison : $lstdiv');

  // subtraction
  var lstsub = lst.first;
  for (int i = 1; i < lst.length; i++) {
    lstsub -= lst[i];
  }
  print('Subtraction:$lstsub');

  //Multi
  var lstmult = lst.first;
  for (int i = 1; i < lst.length; i++) {
    lstmult *= lst[i];
  }
  print('Multiplication: $lstmult');
}

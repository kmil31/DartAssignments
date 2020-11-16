import 'calculation.dart';

void main() {
  calculation calc = new calculation();
  calc.input();
  print(calc.getList());
  calc.setSum();
  print("Sum: ${calc.getSum()}");
  calc.setAvg();
  print("Average: ${calc.getAvg()}");
  calc.setDiff();
  print("Subtraction: ${calc.getDiff()}");
  calc.setDiv();
  print("Division: ${calc.getDiv()}");
  calc.setProduct();
  print("Product: ${calc.getProduct()}");
}

import 'dart:io';

class calculation {
  dynamic _list;
  var _sum;
  var _average;
  var _difference;
  var _dividend;
  var _product;

// sum setter and getter
  void setSum() {
    dynamic sum = 0;
    for (var item in _list) {
      sum += item;
    }
    _sum = sum;
  }

  dynamic getSum() {
    return _sum;
  }

// average setter and getter
  void setAvg() {
    _average = _sum / _list.length;
  }

  dynamic getAvg() {
    return _average;
  }

// difference setter and getter

  void setDiff() {
    var lstsub = _list.first;
    for (var i = 1; i < _list.length; i++) {
      lstsub -= _list[i];
    }
    _difference = lstsub;
  }

  dynamic getDiff() {
    return _difference;
  }

//division setter and getter
  void setDiv() {
    var lstdiv = _list.first;
    for (var i = 1; i < _list.length; i++) {
      lstdiv /= _list[i];
    }
    _dividend = lstdiv;
  }

  dynamic getDiv() {
    return _dividend;
  }

//product setter and getter
  void setProduct() {
    var lstmult = _list.first;
    for (var i = 1; i < _list.length; i++) {
      lstmult *= _list[i];
    }
    _product = lstmult;
  }

  dynamic getProduct() {
    return _product;
  }

// list getter
  dynamic getList() {
    return _list;
  }

//input method aka list setter
  void input() {
    var eflag = false;
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
    this._list = lst;
  }
}

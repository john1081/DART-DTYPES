void main() {
  // Example usage of the functions
  int sumResult = addTwo(5, 3);
  print('Sum: $sumResult');

  int differenceResult = subtractTwo(8, 4);
  print('Difference: $differenceResult');

  int productResult = multiplyTwo(2, 6);
  print('Product: $productResult');

  try {
    double quotientResult = divideTwo(9, 3);
    print('Quotient: $quotientResult');
  } catch (e) {
    print(e);
  }

  String exampleString = "Dart Functions";
  int lengthResult = stringLength(exampleString);
  print('String Length: $lengthResult');

  List<dynamic> exampleList = [1, 'two', 3.0, true];
  try {
    dynamic firstElement = getFirstElement(exampleList);
    print('First Element: $firstElement');
  } catch (e) {
    print(e);
  }
}

int addTwo(int num1, int num2) {
  return num1 + num2;
}

int subtractTwo(int num1, int num2) {
  return num1 - num2;
}

int multiplyTwo(int num1, int num2) {
  return num1 * num2;
}

double divideTwo(int num1, int num2) {
  if (num2 != 0) {
    return num1 / num2;
  } else {
    throw ArgumentError("Cannot divide by zero.");
  }
}

int stringLength(String inputString) {
  return inputString.length;
}

dynamic getFirstElement(List<dynamic> inputList) {
  if (inputList.isNotEmpty) {
    return inputList[0];
  } else {
    throw ArgumentError("The list is empty.");
  }
}

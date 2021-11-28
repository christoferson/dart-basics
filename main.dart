
// A function declaration.
int multiply(int x, int y) {
  return x * y;
}

// Arrow syntax is shorthand for `{ return expr; }`.
int multiplyByNine(int x) => multiply(multiply(x, 3), 3);

// Functions are objects.
String format(String title, int Function(int, int) f, int x, int y) {
  return '${title} ${f(x, y)}';
}

void demoFunctions() {

    print('5 times 3 is ${multiply(5, 3)}');
    print('5 times 9 is ${multiplyByNine(5)}');
    print(format("Call Function multiply with 3 and 7: ", multiply, 3, 7));
}

// 

bool condition(int x) {
  if (x % 2 == 0) {
    return false;
  } else {
    return true;
  }
}

List<int> filter(Iterable<int> numbers, bool Function(int) f) {
  var evenNumbers = <int>[];
  for (var i in numbers) {
    if (f(i)) {
      evenNumbers.add(i);
    }
  }

  return evenNumbers;
}

void demoControlFlow() {
  var numbers = List.generate(10, (i) => i);
  print(filter(numbers, condition));
}


void main() {
  demoFunctions();
  demoControlFlow();
}
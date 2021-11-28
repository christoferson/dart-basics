
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

void main() {
  demoFunctions();
}
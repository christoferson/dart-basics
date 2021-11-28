
// A function declaration.
int multiply(int x, int y) {
  return x * y;
}

// Arrow syntax is shorthand for `{ return expr; }`.
int timesFour(int x) => timesTwo(timesTwo(x));
int multiplyByNine(int x) => multiply(multiply(x, 3), 3);

void demoFunctions() {

    print('5 times 3 is ${multiply(5, 3)}');
    print('5 times 9 is ${multiplyByNine(5)}');

}

void main() {
  demoFunctions();
}
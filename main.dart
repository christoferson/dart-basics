import 'dart:math' as math;

// A function declaration.
int multiply(int x, int y) {
  return x * y;
}

// Arrow syntax is shorthand for `{ return expr; }`.
int multiplyByNine(int x) => multiply(multiply(x, 3), 3);

// Functions are objects.
String format(String title, int Function(int, int) f, int x, int y) {
  return '$title ${f(x, y)}';
}

void demoFunctions() {
    print("********** Functions ********** ");
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
  print("********** Control Flow ********** ");
  var numbers = List.generate(10, (i) => i);
  print(filter(numbers, condition));
}


// 

void demoStrings() {

  print("********** Strings ********** ");

  print('a single quoted string');
  print("a double quoted string");

  // Strings can be combined by placing them adjacent to each other.
  print('cat' 'dog');

  // Triple quotes define a multi-line string.
  print('''triple quoted strings
are for multiple lines''');

  // Dart supports string interpolation.
  final pi = math.pi;
  print('pi is $pi');
  print('tau is ${2 * pi}');  
}

//

// A list literal.
const list = [4, 8, 15, 16, 23, 42];



void demoCollectionList() {

  print("********** List ********** ");

  print(list.first);
  print(list.last);
  print(list.reversed);
  print(list.length);

}

//

// A map literal.
const map = {
  'He': 'Helium',
  'Ne': 'Neon',
  'Ar': 'Argon',
};

void demoCollectionsMap() {

  print("********** Map ********** ");

  print(map['Ne']);
  print(map.keys);
  print(map.containsKey("Ar"));

}

//

// A set literal.
const mset = {
  'Tree',
  'Poison dart',
  'Glass',
};

void demoCollectionsSet() {

  print("********** Set ********** ");

  print(mset.difference({'Poison dart'}));
  print(mset.join(","));

}

void main() {
  demoFunctions();
  demoControlFlow();
  demoStrings();
  demoCollectionList();
  demoCollectionsSet();
}
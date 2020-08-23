main() {
  mfh("harsh");
  mgh(2, 3);
  print(mgh.runtimeType);
  print(mfh.runtimeType);
}

// myf(String i) {
//   print("hello ${i.length}");
// }

var mfh = (i) => print("hello $i");
//lambda expression
Function mgh = (a, b) => print(a + b);

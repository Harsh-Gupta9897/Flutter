hw() {
  const x = 'Harsh';
  print(x);
  print(x);
  print(x);
  print(x);
}

void main() {
  var x = ['hi', 'hello'];
  var y = ['hi', 1];
  var z = [2, 3];
  var l = {"a": 'hii' ,"c": 'hello'};
  var m = {12: 1 ,13: 'hello'};
  var n = {"d": 1 ,"e": 2};
  Map<int, String> o = { 1:"heello",2:"hii"};
  hw();
  print(x.runtimeType);
  print(y.runtimeType);
  print(z.runtimeType);
  print(l.runtimeType);
  print(m.runtimeType);
  print(n.runtimeType);
  print(override.runtimeType);
}

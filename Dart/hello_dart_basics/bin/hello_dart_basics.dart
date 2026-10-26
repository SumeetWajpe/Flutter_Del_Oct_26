void main(List<String> arguments) {
  var name = "Dart"; // Type Inference
  // name = 100;// Error - Strongly typed

  String s;
  s = "Flutter !";
  s = "Flutter Programming !";
  // s = null; // Error !
  print("Type of s is ${s.runtimeType}");

  String? str = "Hello !";
  str = null;

  // const
  // const PI = 3.14; // decl & defn
  // PI = 3.1455656; // Error !

  // const PI; // Error (must be initialized)
  // Difference - final is a runtime constant & const is a compile time constant
  // final
  final d;
  d = DateTime.now();
  // 100 lines of code
  // d = DateTime.now(); // Error !
}

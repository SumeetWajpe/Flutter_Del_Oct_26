void main(List<String> args) {
  // printBook("Dr. APJ Abdul Kalam", "Wings of fire");
  // printBook(title: "Radhey", author: "Ranjit Desai");
  // printBook("Dr. APJ Abdul Kalam", "Wings of fire");
  printBookArrow("Dr. APJ Abdul Kalam", "Wings of fire");
}

// Basic function
// void printBook(String author, String title) {
//   print(author);
// }

// Named Parameters
// void printBook({required String author, required String title}) {
//   print(author);
// }

// Optional Parameters with default values
// void printBook({
//   required String author,
//   required String title,
//   int? numOfPages = 0,
// }) {
//   print(numOfPages);
// }

// Positional Parameters with default values
void printBook(String author, String title, [int numOfPages = 0]) {
  print('$author,$title,$numOfPages');
}

int Add(int x, int y) {
  return x + y;
}

// OR
// Arrow functions / Lambdas
int add({required int x, required int y}) => x + y;

void printBookArrow(String author, String title) => print(author);

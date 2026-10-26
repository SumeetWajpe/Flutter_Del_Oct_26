void main(List<String> args) {
  // printBook("Dr. APJ Abdul Kalam", "Wings of fire");
  printBook(title: "Radhey", author: "Ranjit Desai");
}

// Basic function
// void printBook(String author, String title) {
//   print(author);
// }

// Named Parameters
void printBook({required String author, required String title}) {
  print(author);
}

void main() {
  print("App Started..");
  Future.delayed(Duration(seconds: 5), () {
    print("Hello from future !");
  });

  print("App Ended..");
}

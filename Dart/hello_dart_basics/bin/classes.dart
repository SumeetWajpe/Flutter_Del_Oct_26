void main(List<String> args) {
  // Car carObj = Car("BMW", 200);
  Car carObj = Car(speed: 150, name: "AUDI");
  print('${carObj.name} is running at ${carObj.speed} kmph !');
}

class Car {
  // String name = "BMW";
  // double speed = 200;
  String? name;
  double? speed;
  // Car(){
  //   name = "BMW";
  //   speed = 100;

  // }

  // Car(String name, double speed) {
  //   this.name = name;
  //   this.speed = speed;
  // }
  // Named parameter
  Car({String? name, double? speed}) {
    this.name = name;
    this.speed = speed;
  }
}

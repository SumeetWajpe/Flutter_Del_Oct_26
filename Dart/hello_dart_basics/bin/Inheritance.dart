void main(List<String> args) {
  JamesBondCar jbc = JamesBondCar(speed: 400, name: "Aston Martin");
  print(jbc.name);

  Employee e = Employee();
  TennisPlayer tp = TennisPlayer();
  
}

class Car {
  String? name;
  double? speed;
  Car(this.name, this.speed);

  String accelerate() {
    return ("The car $name is running at $speed kmph !");
  }
}

class JamesBondCar extends Car {
  bool? isArmed;
  JamesBondCar({String name = "AUDI", double speed = 200, this.isArmed = false})
    : super(name, speed);
}

mixin Person {
  String name = "";
  double age = 0;
}

mixin Athelete {
  bool isFit = true;
}

class Employee with Person {
  double? salary;
}

class Player {
  String stats = "";
}

class TennisPlayer extends Player with Person, Athelete {
  bool isSeeded = true;
}

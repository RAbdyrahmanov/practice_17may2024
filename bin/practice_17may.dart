import 'dart:io';

void main() {
  Tuz tuz = Tuz(color: 'red', mast: 'piki');
  Korol korol = Korol(color: 'black', mast: 'chervi');
  Dama dama = Dama(color: 'red', mast: 'bubny');
  Valet valet = Valet(color: 'black', mast: 'kresti');

  tuz.printInfo();
  korol.printInfo();
  dama.printInfo();
  valet.printInfo();
  Father papa = Father(
      glaza: 'karie', ruka: 'pravsha', vneshnost: 'asiat', volosy: 'brunet');
  papa.printFatherInfo();
  Son ivan = Son(
      glaza: 'karie', ruka: 'levsha', vneshnost: 'slavyan', volosy: 'brunet');
  ivan.printSonInfo();

  var Tayota1 = Pokolenie1(
      dvijok: 'JZ', kuzov: 'Jelezo', podveska: 'Obycnye', fary: 'xenon');
  var Toyota2 = Pokolenie2();
  var Toyota3 = Pokolenie3();
  Tayota1.printInfo();
  Toyota2.printInfo();
  Toyota3.printInfo();

  var myVehicle = Vehicle(
    maxSpeed: 100.0,
    mileAge: 15000,
    seatingCapacity: 4,
  );
  myVehicle.printVehicleInfo();

  var myScooter = Scooter(
    maxSpeed: 30.0,
    mileAge: 2000,
    seatingCapacity: 2,
  );
  myScooter.printScooterInfo();

  var myBus = Bus(
    maxSpeed: 60.0,
    mileAge: 50000,
  );
  myBus.printBusInfo();

  var myMiniBus = MiniBus(
    maxSpeed: 600.0,
    mileAge: 30000,
  );
  myMiniBus.printMiniBusInfo();

  List<Person> people = [];

  for (int i = 0; i < 2; i++) {
    stdout.write('Enter the name of Student ${i + 1}: ');
    String? studentName = stdin.readLineSync();
    if (studentName != null && studentName.isNotEmpty) {
      people.add(Student(name: studentName));
    }
  }

  stdout.write('Enter the name of Teacher: ');
  String? teacherName = stdin.readLineSync();
  if (teacherName != null && teacherName.isNotEmpty) {
    people.add(Teacher(name: teacherName));
  }

  for (var person in people) {
    person.printInfo();
    if (person is Student) {
      person.study();
    } else if (person is Teacher) {
      person.explain();
    }
  }
}

class Card {
  String color;
  String mast;

  Card({required this.color, required this.mast});

  void printCard() {
    print('Card: $mast, Color: $color');
  }
}

class Tuz extends Card {
  Tuz({required String color, required String mast})
      : super(color: color, mast: mast);

  void printInfo() {
    print('Tuz  $mast, Color: $color');
  }
}

class Korol extends Card {
  Korol({required String color, required String mast})
      : super(color: color, mast: mast);

  void printInfo() {
    print('Korol  $mast, Color: $color');
  }
}

class Dama extends Card {
  Dama({required String color, required String mast})
      : super(color: color, mast: mast);

  void printInfo() {
    print('Dama  $mast, Color: $color');
  }
}

class Valet extends Card {
  Valet({required String color, required String mast})
      : super(color: color, mast: mast);

  void printInfo() {
    print('Valet  $mast, Color: $color');
  }
}

class Father {
  String glaza;
  String? ruka;
  String volosy;
  String? vneshnost;
  Father(
      {required this.glaza,
      required this.ruka,
      required this.vneshnost,
      required this.volosy});

  void printFatherInfo() {
    print('Father: $glaza, ruka: $ruka, volosy:$volosy, vneshnost: $vneshnost');
  }
}

class Son extends Father {
  Son(
      {required super.glaza,
      required super.ruka,
      required super.vneshnost,
      required super.volosy});

  void printSonInfo() {
    print('Son: $glaza, ruka: $ruka, volosy:$volosy, vneshnost: $vneshnost');
  }
}

class Pokolenie1 {
  String dvijok;
  String kuzov;
  String podveska;
  String fary;

  Pokolenie1({
    required this.dvijok,
    required this.kuzov,
    required this.podveska,
    required this.fary,
  });

  void printInfo() {
    print(
        'Pokolenie 1: Dvijok: $dvijok, Kuzov: $kuzov, Podveska: $podveska, Fary: $fary');
  }
}

class Pokolenie2 extends Pokolenie1 {
  Pokolenie2()
      : super(
          dvijok: 'GR',
          kuzov: 'Jelezo',
          podveska: 'Pnevma',
          fary: 'Xenon',
        );

  @override
  void printInfo() {
    print(
        'Pokolenie 2: Dvijok: $dvijok, Kuzov: $kuzov, Podveska: $podveska, Fary: $fary');
  }
}

class Pokolenie3 extends Pokolenie2 {
  Pokolenie3() : super() {
    kuzov = 'MetalZamenitel';
    fary = 'Laser';
  }

  @override
  void printInfo() {
    print(
        'Pokolenie 3: Dvijok: $dvijok, Kuzov: $kuzov, Podveska: $podveska, Fary: $fary');
  }
}

class Vehicle {
  double maxSpeed;
  int mileAge;
  int seatingCapacity;
  static const String color = "white";

  Vehicle({
    required this.maxSpeed,
    required this.mileAge,
    required this.seatingCapacity,
  });

  void printVehicleInfo() {
    print(
        'Vehicle: Max Speed: $maxSpeed km/h, Mileage: $mileAge km, Seating Capacity: $seatingCapacity, Color: $color');
  }
}

class Scooter extends Vehicle {
  Scooter({
    required double maxSpeed,
    required int mileAge,
    required int seatingCapacity,
  }) : super(
          maxSpeed: maxSpeed,
          mileAge: mileAge,
          seatingCapacity: seatingCapacity,
        );

  void printScooterInfo() {
    print(
        'Scooter: Max Speed: $maxSpeed km/h, Mileage: $mileAge km, Seating Capacity: $seatingCapacity, Color: $Vehicle.color');
  }
}

class Bus extends Vehicle {
  Bus({
    required double maxSpeed,
    required int mileAge,
    int seatingCapacity = 40,
  }) : super(
          maxSpeed: maxSpeed,
          mileAge: mileAge,
          seatingCapacity: seatingCapacity,
        );

  void printBusInfo() {
    print(
        'Bus: Max Speed: $maxSpeed km/h, Mileage: $mileAge km, Seating Capacity: $seatingCapacity, Color: $Vehicle.color');
  }
}

class MiniBus extends Vehicle {
  MiniBus({
    required double maxSpeed,
    required int mileAge,
    int seatingCapacity = 18,
  }) : super(
          maxSpeed: maxSpeed,
          mileAge: mileAge,
          seatingCapacity: seatingCapacity,
        );

  void printMiniBusInfo() {
    double baseFare = seatingCapacity * 100;
    double serviceCharge = baseFare * 0.10;
    double totalFare = baseFare + serviceCharge;
    print(
        'MiniBus: Max Speed: $maxSpeed km/h, Mileage: $mileAge km, Seating Capacity: $seatingCapacity, Color: $Vehicle.color, Total Fare: \$${totalFare.toStringAsFixed(2)}');
  }
}

class Person {
  String name;

  Person({required this.name});

  void printInfo() {
    print('Name: $name');
  }
}

class Student extends Person {
  Student({required String name}) : super(name: name);

  void study() {
    print('$name is studying.');
  }

  @override
  void printInfo() {
    print('Student Name: $name');
  }
}

class Teacher extends Person {
  Teacher({required String name}) : super(name: name);

  void explain() {
    print('$name is explaining.');
  }

  @override
  void printInfo() {
    print('Teacher Name: $name');
  }
}

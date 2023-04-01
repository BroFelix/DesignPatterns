import 'dart:io';

class Car {
  var title;
  var engine;
  var seats;
  var gps;
  var tripComputer;
}

class Manual {
  var title;
  var engine;
  var seats;
  var gps;
  var tripComputer;
}

abstract class Builder {
  void reset();
  void setSeats(int numberOfSeats);
  void setEngine(engine);
  void setTripComputer(bool val);
  void setGps(destination);
}

class CarBuilder extends Builder {
  Car? car;
  CarBuilder() {
    reset();
  }

  @override
  void reset() {
    car = Car();
  }

  @override
  void setTripComputer(value) {
    car?.tripComputer = value;
  }

  @override
  void setEngine(engine) {
    car?.engine = engine;
  }

  @override
  void setGps(destination) {
    car?.gps = destination;
  }

  @override
  void setSeats(int numberOfSeats) {
    car?.seats = numberOfSeats;
  }
}

class ManualBuilder extends Builder {
  Manual? manual;
  ManualBuilder() {
    reset();
  }
  @override
  void reset() {
    manual = Manual();
  }

  @override
  void setEngine(engine) {
    manual?.engine = engine;
  }

  @override
  void setGps(destination) {
    manual?.gps = destination;
  }

  @override
  void setSeats(int numberOfSeats) {
    manual?.seats = numberOfSeats;
  }

  @override
  void setTripComputer(value) {
    manual?.tripComputer = value;
  }
}

class Director {
  void constructSportsCar(Builder builder) {
    builder.reset();
    builder.setSeats(2);
    builder.setEngine(SportEngine());
    builder.setTripComputer(true);
    builder.setGps('NewYork');
  }
}

class SportEngine {}

import 'package:flutter_clean_architecture/layers/domain/entities/car_entity.dart';

class CarDto extends CarEntity {
  String plate;
  String color;
  double price;
  int seats;

  CarDto({
    required this.plate,
    required this.color,
    required this.price,
    required this.seats,
  }) : super(plate: plate, color: color, price: price, seats: seats);

  Map toMap() {
    return {
      'plate': this.plate,
      'color': this.color,
      'price': this.price,
      'seats': this.seats
    };
  }

  static CarDto fromMap(Map map) {
    return CarDto(
      plate: map['plate'],
      color: map['color'],
      price: map['price'],
      seats: map['seats'],
    );
  }
}

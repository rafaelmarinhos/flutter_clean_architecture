class CarEntity {
  String plate;
  String color;
  double price;
  int seats;

  CarEntity({
    required this.plate,
    required this.color,
    required this.price,
    required this.seats,
  });

  double get realPrice {
    return price * seats;
  }
}

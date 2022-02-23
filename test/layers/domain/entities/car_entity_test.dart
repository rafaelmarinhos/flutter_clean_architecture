import 'package:flutter_clean_architecture/layers/domain/entities/car_entity.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test('Car should be not null', () {
    CarEntity carEntity = CarEntity(
      plate: 'NKT5088',
      color: 'red',
      price: 10000.00,
      seats: 4,
    );

    expect(carEntity, isNotNull);
  });

  test('Car real price should be 40000.00', () {
    CarEntity carEntity = CarEntity(
      plate: 'NKT5088',
      color: 'red',
      price: 10000.00,
      seats: 4,
    );

    var value = carEntity.realPrice;
    expect(value, 40000.00);
  });
}

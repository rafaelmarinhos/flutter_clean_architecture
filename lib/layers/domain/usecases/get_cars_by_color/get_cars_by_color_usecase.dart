import 'package:flutter_clean_architecture/layers/domain/entities/car_entity.dart';

abstract class GetCarsByColorUseCase {
  CarEntity call(String color);
}

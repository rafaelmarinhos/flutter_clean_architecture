import 'package:flutter_clean_architecture/layers/data/datasources/get_cars_by_color_datasource.dart';
import 'package:flutter_clean_architecture/layers/data/dtos/car_dto.dart';
import 'package:flutter_clean_architecture/layers/domain/entities/car_entity.dart';

class GetCarsByColorLocalDataSourceImp implements GetCarsByColorDataSource {
  final jsonRed = {
    'plate': 'NKT-5088',
    'color': 'red',
    'price': 20000.00,
    'seats': 2,
  };

  final jsonWhite = {
    'plate': 'ONE-2755',
    'color': 'white',
    'price': 50000.00,
    'seats': 4,
  };

  @override
  CarEntity call(String color) {
    if (color.contains('red')) {
      return CarDto.fromMap(jsonRed);
    }
    return CarDto.fromMap(jsonWhite);
  }
}

import 'package:flutter_clean_architecture/layers/data/datasources/get_cars_by_color_datasource.dart';
import 'package:flutter_clean_architecture/layers/domain/entities/car_entity.dart';
import 'package:flutter_clean_architecture/layers/domain/repositories/get_cars_by_color_repository.dart';

class GetCarsByColorRepositoryImp implements GetCarsByColorRepository {
  final GetCarsByColorDataSource _getCarsByColorDataSource;

  GetCarsByColorRepositoryImp(
    this._getCarsByColorDataSource,
  );

  @override
  CarEntity call(String color) {
    return _getCarsByColorDataSource(color);
  }
}

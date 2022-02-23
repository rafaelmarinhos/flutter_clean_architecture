import 'package:flutter_clean_architecture/layers/domain/entities/car_entity.dart';
import 'package:flutter_clean_architecture/layers/domain/usecases/get_cars_by_color/get_cars_by_color_usecase.dart';
import 'package:flutter_clean_architecture/layers/domain/usecases/save_favorite_car/save_favorite_car_usecase.dart';

class CarController {
  final GetCarsByColorUseCase _getCarsByColorUseCase;
  final SaveFavoriteCarUseCase _saveFavoriteCarUseCase;

  CarController(
    this._getCarsByColorUseCase,
    this._saveFavoriteCarUseCase,
  ) {
    getCarsByColor('white');
  }

  late CarEntity car;

  getCarsByColor(String color) {
    car = _getCarsByColorUseCase(color);
  }

  saveFavoriteCar(CarEntity car) async {
    var result = await _saveFavoriteCarUseCase(car);
  }
}

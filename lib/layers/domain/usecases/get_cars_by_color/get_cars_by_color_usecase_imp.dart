import 'package:flutter_clean_architecture/layers/domain/entities/car_entity.dart';
import 'package:flutter_clean_architecture/layers/domain/repositories/get_cars_by_color_repository.dart';
import 'get_cars_by_color_usecase.dart';

class GetCarsByColorUseCaseImp implements GetCarsByColorUseCase {
  final GetCarsByColorRepository _getCarsByColorRepository;

  GetCarsByColorUseCaseImp(
    this._getCarsByColorRepository,
  );

  @override
  CarEntity call(String color) {
    return _getCarsByColorRepository(color);
  }
}

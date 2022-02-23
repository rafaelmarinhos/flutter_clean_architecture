import 'package:flutter_clean_architecture/layers/domain/entities/car_entity.dart';
import 'package:flutter_clean_architecture/layers/domain/repositories/save_favorite_car_repository.dart';
import 'save_favorite_car_usecase.dart';

class SaveFavoriteCarUseCaseImp implements SaveFavoriteCarUseCase {
  final SaveFavoriteCarRepository _saveFavoriteCarRepository;

  SaveFavoriteCarUseCaseImp(
    this._saveFavoriteCarRepository,
  );

  @override
  Future<bool> call(CarEntity carEntity) async {
    return await _saveFavoriteCarRepository(carEntity);
  }
}

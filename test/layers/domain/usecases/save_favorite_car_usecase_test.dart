import 'package:flutter_clean_architecture/layers/data/repositories/save_favorite_car_repository_imp.dart';
import 'package:flutter_clean_architecture/layers/domain/entities/car_entity.dart';
import 'package:flutter_clean_architecture/layers/domain/usecases/save_favorite_car/save_favorite_car_usecase.dart';
import 'package:flutter_clean_architecture/layers/domain/usecases/save_favorite_car/save_favorite_car_usecase_imp.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test('Car should be saved successfully', () async {
    SaveFavoriteCarUseCase saveFavoriteCarUseCase =
        SaveFavoriteCarUseCaseImp(SaveFavoriteCarRepositoryImp());

    CarEntity carEntity =
        CarEntity(plate: 'NKT5088', color: 'red', price: 10000.00, seats: 4);

    var result = await saveFavoriteCarUseCase(carEntity);

    expect(result, true);
  });

  test('Car should be not saved successfully when price is less or equal 0',
      () async {
    SaveFavoriteCarUseCase saveFavoriteCarUseCase =
        SaveFavoriteCarUseCaseImp(SaveFavoriteCarRepositoryImp());

    CarEntity carEntity =
        CarEntity(plate: 'NKT5088', color: 'red', price: 0, seats: 4);

    var result = await saveFavoriteCarUseCase(carEntity);

    expect(result, false);
  });
}

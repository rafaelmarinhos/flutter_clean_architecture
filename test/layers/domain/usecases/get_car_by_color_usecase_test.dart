import 'package:flutter_clean_architecture/layers/data/datasources/get_cars_by_color_datasource.dart';
import 'package:flutter_clean_architecture/layers/data/datasources/local/get_cars_by_color_local_datasource_imp.dart';
import 'package:flutter_clean_architecture/layers/data/repositories/get_cars_by_color_repository_imp.dart';
import 'package:flutter_clean_architecture/layers/domain/usecases/get_cars_by_color/get_cars_by_color_usecase.dart';
import 'package:flutter_clean_architecture/layers/domain/usecases/get_cars_by_color/get_cars_by_color_usecase_imp.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test('Number of seats in the car should be 2', () {
    GetCarsByColorDataSource _localDataSource =
        GetCarsByColorLocalDataSourceImp();

    GetCarsByColorUseCase getCarsByColorUseCase =
        GetCarsByColorUseCaseImp(GetCarsByColorRepositoryImp(_localDataSource));

    var result = getCarsByColorUseCase('red');

    expect(result.seats, 2);
  });

  test('Number of seats in the car should be 4', () {
    GetCarsByColorDataSource _localDataSource =
        GetCarsByColorLocalDataSourceImp();

    GetCarsByColorUseCase getCarsByColorUseCase =
        GetCarsByColorUseCaseImp(GetCarsByColorRepositoryImp(_localDataSource));

    var result = getCarsByColorUseCase('black');

    expect(result.seats, 4);
  });
}

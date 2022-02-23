import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/layers/presentation/controllers/car_controller.dart';
import 'package:get_it/get_it.dart';

class CarPage extends StatelessWidget {
  CarPage({Key? key}) : super(key: key);

  final controler = GetIt.I.get<CarController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(24),
        child: Text(controler.car.plate),
      ),
    );
  }
}

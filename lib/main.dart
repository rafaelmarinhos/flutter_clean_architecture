import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/core/inject/inject.dart';
import 'package:flutter_clean_architecture/layers/presentation/ui/pages/car_page.dart';

void main() {
  Inject.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CarPage(),
    );
  }
}

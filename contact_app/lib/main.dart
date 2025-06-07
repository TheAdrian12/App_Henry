import 'package:contact_app/feacture/presentation/home/view/carga_view.dart' show carga;
import 'package:contact_app/feacture/presentation/home/view/failure_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: carga(),
      );

  }

}


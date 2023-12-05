import 'package:flutter/material.dart';
import 'package:flutter_state_management/getX/counterGetx.dart';
import 'package:flutter_state_management/kategoripage.dart';
import 'package:flutter_state_management/setBiasa.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(colorScheme: ColorScheme.dark()),
      home: ConnectGetX(),
    );
  }
}

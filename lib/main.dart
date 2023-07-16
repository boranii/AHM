import 'package:ahn/main.dart';
import 'package:ahn/shared/components/components.dart';
import 'package:flutter/material.dart';
import 'package:ahn/layout/design.dart';
import 'modules/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homee(),
    );
  }
}

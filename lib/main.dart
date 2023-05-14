import 'package:flutter/material.dart';
import '/constants.dart';
import '/splash_screen.dart';

import 'dio_helper.dart';
import 'home_screen.dart';
import 'login_screen.dart';

void main() {
  DioHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: getMaterialColor(mainColor as Color)),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

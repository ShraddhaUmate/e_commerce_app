import 'dart:async';
import 'package:e_commerce_app/screens/login_page.dart';
import 'package:e_commerce_app/screens/splash_screen.dart';
import 'package:flutter/material.dart';
  import 'core/size_config.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  SplashScreen(),
    );
  }
}

import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const RapidCargoApp());
}

class RapidCargoApp extends StatelessWidget {
  const RapidCargoApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: Colors.lightGreen
        ),
        home: SplashScreen()
    );
  }
}
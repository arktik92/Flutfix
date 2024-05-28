import 'package:flutter/material.dart';
import 'package:flutflix/colors.dart';
import 'package:flutflix/ui/home_screen.dart';

// MARK: - Premiere fonction appelée dans une app flutter.
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutflix',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colours.scaffoldBgColor,
        useMaterial3: true
      ),
      home: const HomeScreen(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:play_mate/pages/home/home.dart';
import 'package:play_mate/pages/home/main_controller.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Play Mate',
      debugShowCheckedModeBanner: false,
      home: MainController()
    );
  }
}






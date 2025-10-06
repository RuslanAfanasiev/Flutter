import 'package:flutter/material.dart';
import 'package:second_lab/pages/main_page.dart';
import 'package:second_lab/widgets/top_nav_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.white)),
      home: const MyHomePage(title: "Flutter demo home page"),
    );
  }
}

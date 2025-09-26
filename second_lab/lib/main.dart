import 'package:flutter/material.dart';
import 'package:second_lab/pages/header.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: HeaderWidget(text: 'Welcome Sidra'),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 1.67, left: 1.67),
              child: NotificationIcon(imagePath: 'assets/icons/notification-2-fill.png'),
            ),
          ],
        ),
      ),
    );
  }
}

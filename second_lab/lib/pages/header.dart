import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  final String text;

  const HeaderWidget({required this.text, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 25,
      margin: const EdgeInsets.only(top: 44, left: 21),
      child: Text(
        text,
        style: TextStyle(
          fontFamily: 'Plus Jakarta Sans',
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          fontSize: 20,
          height: 1.0, // 100% of font size
          letterSpacing: 1.0, // 5% of font size
        ),
      ),
    );
  }
}

class NotificationIcon extends StatelessWidget {
  final String imagePath;

  const NotificationIcon({required this.imagePath, Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 16.67,
      height: 17.92,
      margin: const EdgeInsets.only(top: 49, left: 346),
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover,
        color: const Color(0xFF00707E),
        colorBlendMode: BlendMode.srcIn, // Ensures no opacity blending issues
        opacity: const AlwaysStoppedAnimation(1),
      ),
    );
  }
}
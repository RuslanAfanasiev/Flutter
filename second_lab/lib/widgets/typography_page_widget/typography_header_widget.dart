import 'package:flutter/material.dart';

import '../../home_page_items/typography_page_items/course_item.dart';

class TypographyHeaderWidget extends StatelessWidget {
  final CourseItem item;
  const TypographyHeaderWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          item.thumbnail,
          height: 240,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Container(
          height: 240,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.transparent, Colors.black.withOpacity(0.7)],
            ),
          ),
        ),
        Positioned(
          bottom: 16,
          left: 16,
          right: 16,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                item.institute,
                style: const TextStyle(color: Colors.white70, fontSize: 16),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
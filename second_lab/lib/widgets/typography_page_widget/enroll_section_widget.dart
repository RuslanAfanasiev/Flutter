import 'package:flutter/material.dart';
import 'package:second_lab/resources/app_colors.dart';

import '../../home_page_items/typography_page_items/course_item.dart';

class EnrollSectionWidget extends StatelessWidget {
  final CourseItem item;
  const EnrollSectionWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      //color: AppColors.color00434C,
      child: Column(
        children: [
          const SizedBox(height: 12),
          ElevatedButton(
            onPressed: () {
              // Logică de înscriere
            },
            style: ElevatedButton.styleFrom(
              minimumSize: Size(double.infinity, 50),
            ),
            child: Text('Enroll Now', style: TextStyle(fontSize: 16, color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
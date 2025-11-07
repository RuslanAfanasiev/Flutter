import 'package:flutter/material.dart';
import 'package:second_lab/resources/app_colors.dart';
import 'package:second_lab/resources/app_icons.dart';

import 'info_row_widget.dart';

class CourseDetailsSectionWidget extends StatelessWidget {
  const CourseDetailsSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          InfoRowWidget(icon: AppIcons.lectureIcon, label: 'Lectures', value: '50+ Lectures', color: AppColors.color00707E),
          const SizedBox(height: 16),
          InfoRowWidget(icon: AppIcons.timeIcon, label: 'Learning Time', value: '4 Weeks', color: AppColors.color00707E),
          const SizedBox(height: 16),
          InfoRowWidget(icon: AppIcons.certificateIcon, label: 'Certification', value: 'Online Certificate', color: AppColors.color00707E),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:second_lab/home_page_items/typography_page_items/lesson_item.dart';
import 'package:second_lab/resources/app_colors.dart';

class CourseDetailsSectionWidget extends StatelessWidget {
  final List<LessonItem> item;

  const CourseDetailsSectionWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    final totalDuration = item.fold<int>(
      0,
          (sum, l) {
        final minutes = int.tryParse(l.duration.replaceAll(RegExp(r'[^0-9]'), '')) ?? 0;
        return sum + minutes;
      },
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Course Details',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: AppColors.color00707E,
            ),
          ),
          const SizedBox(height: 8),
          Text('${item.length} lessons • $totalDuration minutes'),
          const SizedBox(height: 12),
          ...item.map(
            (lesson) => ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Icon(
                lesson.isPreview
                    ? Icons.play_circle_outline
                    : Icons.lock_outline,
                size: 20,
                color: lesson.isPreview ? Colors.green : Colors.grey,
              ),
              title: Text(lesson.title, style: const TextStyle(fontSize: 14)),
              trailing: Text(
                '${lesson.duration} min',
                style: const TextStyle(fontSize: 12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

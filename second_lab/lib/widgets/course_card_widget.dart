import 'package:flutter/material.dart';
import 'package:second_lab/list_items/course_card_item.dart';
import 'package:second_lab/resources/app_icons.dart';

import '../resources/app_colors.dart';

class CourseCardWidget extends StatelessWidget {
  final CourseCardItem item;

  const CourseCardWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25, vertical: 4),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.colorFFFFFF,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.asset(
              item.image,
              height: 60,
              width: 87,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.title,
                  style: TextStyle(
                    fontFamily: 'PlusJakartaSans',
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: AppColors.color00434C,
                  ),
                ),
                const SizedBox(height: 1),
                Text(
                  item.subtitle,
                  style: TextStyle(
                    fontFamily: 'PlusJakartaSans',
                    fontSize: 9,
                    color: AppColors.color00707E,
                  ),
                ),
                const SizedBox(height: 1),
                Row(
                  children: [
                    AppIcons.starIcon,
                    SizedBox(width: 2),
                    Text(
                      item.rating.toString(),
                      style: const TextStyle(
                        fontFamily: 'PlusJakartaSans',
                        fontWeight: FontWeight.w600,
                        fontSize: 8,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                LinearProgressIndicator(
                  value: item.progress,
                  color: AppColors.color00707E,
                  backgroundColor: AppColors.colorD9D9D9,
                  borderRadius: BorderRadius.circular(5),
                  minHeight: 8,
                ),
                const SizedBox(height: 2),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    '${(item.progress * 100).toInt()}% Completed',
                    style: TextStyle(
                      fontFamily: 'PlusJakartaSans',
                      fontSize: 6,
                      color: AppColors.color6C6C6C,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

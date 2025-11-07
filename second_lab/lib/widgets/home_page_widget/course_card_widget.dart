import 'package:flutter/material.dart';

import '../../home_page_items/list_items/course_card_item.dart';
import '../../resources/app_colors.dart';

class CourseCardWidget extends StatelessWidget {
  const CourseCardWidget({super.key, required this.item});

  final CourseCardItem item;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          // Course image
          Container(
            width: 100,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
              image: DecorationImage(
                image: NetworkImage(item.image),
                fit: BoxFit.cover,
              ),
            ),
            child: Image.network(
              item.image,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  color: Colors.grey[200],
                  child: const Icon(Icons.image, color: Colors.grey),
                );
              },
            ),
          ),

          const SizedBox(width: 12),

          // Content
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Title
                      SizedBox(
                        height: constraints.maxHeight * 0.4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              item.title,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF184E77),
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                            Text(
                              item.institute,
                              style: const TextStyle(
                                fontSize: 11,
                                color: Colors.grey,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          ],
                        ),
                      ),

                      // Rating
                      SizedBox(
                        height: constraints.maxHeight * 0.2,
                        child: Row(
                          children: [
                            const Icon(Icons.star,
                                color: Color(0xFF184E77), size: 14),
                            const SizedBox(width: 4),
                            Text(
                              item.rating.toString(),

                              style: const TextStyle(
                                fontSize: 12,
                                color: Color(0xFF184E77),
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Progress
                      SizedBox(
                        height: constraints.maxHeight * 0.4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            LinearProgressIndicator(
                              value: item.progress / 100,
                              backgroundColor: Colors.grey[300],
                              color: const Color(0xFF184E77),
                              minHeight: 4,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            const SizedBox(height: 2),
                            Text(
                              "${item.progress}% Completed",
                              style: TextStyle(
                                fontSize: 10,
                                color: AppColors.color6C6C6C
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
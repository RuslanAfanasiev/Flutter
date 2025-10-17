import 'package:flutter/material.dart';
import 'package:second_lab/data/top_courses_card_data.dart';
import 'package:second_lab/widgets/home_page_widget/top_courses_card_widget.dart';

class TopCoursesHorizontalListWidget extends StatelessWidget {
  const TopCoursesHorizontalListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: topCoursesCardData.length,
        itemBuilder: (context, index) {
          final cardItem = topCoursesCardData[index];
          return Padding(
            padding: const EdgeInsets.only(right: 1),
            child: TopCoursesCardWidget(item: cardItem),
          );
        },
      ),
    );
  }
}
import 'package:second_lab/home_page_items/list_items/list_item.dart';

import 'course_card_item.dart';

class ContinueWatchingItem extends ListItem {
  final List<CourseCardItem> courses;

  ContinueWatchingItem({required this.courses});

  factory ContinueWatchingItem.fromJson(List<dynamic> jsonList) {
    final courses = jsonList
        .map((json) => CourseCardItem.fromJson(json as Map<String, dynamic>))
        .toList();

    return ContinueWatchingItem(courses: courses);
  }
}
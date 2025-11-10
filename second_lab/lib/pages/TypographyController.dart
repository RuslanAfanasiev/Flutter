import 'package:get/get.dart';
import 'package:second_lab/json/v1.dart';
import 'package:second_lab/home_page_items/typography_page_items/course_item.dart';

import '../home_page_items/typography_page_items/instructor_item.dart'; // ai deja CourseItem acolo

class TypographyController extends GetxController {
  final RxList<CourseItem> items = RxList();

  @override
  void onInit() {
    super.onInit();
    loadCourse();
  }

  void loadCourse() {
    final courseJson = details['course'] as Map<String, dynamic>;
    items.add(CourseItem.fromJson(courseJson));

  }
}

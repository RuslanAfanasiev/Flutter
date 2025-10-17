import 'package:second_lab/home_page_items/list_items/list_item.dart';

class CourseCardItem extends ListItem {
  final String image;
  final String title;
  final String subtitle;
  final double rating;
  final double progress;

  CourseCardItem({
    required this.title,
    required this.subtitle,
    required this.rating,
    required this.progress,
    required this.image,
  });
}

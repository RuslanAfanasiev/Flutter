import 'package:second_lab/home_page_items/list_items/list_item.dart';

class TopCoursesCardItem extends ListItem{
  final String image;
  final String title;
  final String subtitle;
  final double rating;

  TopCoursesCardItem({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.rating,
  });
}
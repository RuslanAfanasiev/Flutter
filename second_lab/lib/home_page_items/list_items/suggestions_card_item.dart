import 'package:second_lab/home_page_items/list_items/list_item.dart';

class SuggestionsCardItem extends ListItem {
  final String image;
  final String title;
  final String subtitle;
  final double rating;

  SuggestionsCardItem({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.rating,
  });
}

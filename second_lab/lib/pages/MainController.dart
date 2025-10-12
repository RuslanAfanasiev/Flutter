import 'package:get/get.dart';
import 'package:second_lab/data/courses_data.dart';
import 'package:second_lab/list_items/categories_item.dart';
import 'package:second_lab/list_items/continue_watching_item.dart';
import 'package:second_lab/list_items/horizontal/suggestions_horizontal_list_item.dart';
import 'package:second_lab/list_items/horizontal/toggle_button_horizontal_list_item.dart';
import 'package:second_lab/list_items/list_item.dart';
import 'package:second_lab/list_items/nav_list_item.dart';
import 'package:second_lab/list_items/search_bar_list_item.dart';
import 'package:second_lab/list_items/suggestions_item.dart';
import 'package:second_lab/list_items/top_courses_item.dart';

import '../list_items/horizontal/top_courses_horizontal_list_item.dart';
import '../resources/strings.dart';

class MainController extends GetxController{
  RxList<ListItem> items = RxList();

  @override
  void onInit(){
    super.onInit();
    addItems();
  }
  void addItems(){
    items.add(NavbarListItem(welcome: Strings.welcome, username: Strings.username));
    items.add(SearchBarListItem());
    items.add(ContinueWatchingItem());
    items.addAll(coursesProgress);
    items.add(CategoriesItem());
    items.add(ToggleButtonHorizontalListItem());
    items.add(SuggestionsItem());
    items.add(SuggestionsHorizontalListItem());
    items.add(TopCoursesItem());
    items.add(TopCoursesHorizontalListItem());

  }
}
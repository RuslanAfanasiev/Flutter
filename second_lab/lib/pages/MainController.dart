import 'package:get/get.dart';
import 'package:second_lab/home_page_items/list_items/continue_watching_item.dart';
import 'package:second_lab/home_page_items/list_items/horizontal/top_courses_horizontal_list_item.dart';
import 'package:second_lab/home_page_items/list_items/list_item.dart';
import 'package:second_lab/home_page_items/list_items/nav_list_item.dart';
import 'package:second_lab/home_page_items/list_items/search_bar_list_item.dart';
import 'package:second_lab/home_page_items/list_items/suggestions_item.dart';
import 'package:second_lab/home_page_items/list_items/top_courses_item.dart';

import '../home_page_items/list_items/categories_item.dart';
import '../home_page_items/list_items/horizontal/suggestions_horizontal_list_item.dart';
import '../home_page_items/list_items/horizontal/toggle_button_horizontal_list_item.dart';
import '../home_page_items/list_items/suggestions_card_item.dart';
import '../home_page_items/list_items/toggle_button_item.dart';
import '../home_page_items/list_items/top_courses_card_item.dart';
import '../json/v1.dart';

class MainController extends GetxController {
  RxList<ListItem> items = RxList();

  @override
  void onInit() {
    super.onInit();
    addItems();
  }

  void addItems() {

    final userJson = home['user'] as Map<String, dynamic>;
    items.add(NavbarListItem.fromJson(userJson));

    items.add(SearchBarListItem());

    final continueWatchingList = home['continueWatching'] as List<dynamic>;
    final continueWatchingItem = ContinueWatchingItem.fromJson(
      continueWatchingList,
    );
    items.add(continueWatchingItem);

    items.add(CategoriesItem());

    final categories = (home['categories'] as List<dynamic>)
        .map((e) => ToggleButtonItem.fromJson(e as Map<String, dynamic>))
        .toList();
    items.add(ToggleButtonHorizontalListItem(item: categories));

    items.add(SuggestionsItem());

    final suggestions = (home['suggestions'] as List<dynamic>)
        .map((e) => SuggestionsCardItem.fromJson(e as Map<String, dynamic>))
        .toList();
    items.add(SuggestionsHorizontalListItem(item: suggestions));

    items.add(TopCoursesItem());
    final topCourses = (home['topCourses'] as List<dynamic>)
        .map((e) => TopCoursesCardItem.fromJson(e as Map<String, dynamic>))
        .toList();
    items.add(TopCoursesHorizontalListItem(item: topCourses));
  }

  // RxList<ListItem> items = RxList();
  //
  // @override
  // void onInit(){
  //   super.onInit();
  //   addItems();
  // }
  // void addItems(){
  //   items.add(NavbarListItem(welcome: Strings.welcome, username: Strings.username));
  //   items.add(SearchBarListItem());
  //   items.add(ContinueWatchingItem());
  //   items.addAll(coursesProgress);
  //   items.add(CategoriesItem());
  //   items.add(ToggleButtonHorizontalListItem());
  //   items.add(SuggestionsItem());
  //   items.add(SuggestionsHorizontalListItem());
  //   items.add(TopCoursesItem());
  //   items.add(TopCoursesHorizontalListItem());
  //
  // }
}

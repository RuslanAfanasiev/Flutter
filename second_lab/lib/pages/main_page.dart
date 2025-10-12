import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:second_lab/list_items/categories_item.dart';
import 'package:second_lab/list_items/course_card_item.dart';
import 'package:second_lab/list_items/horizontal/top_courses_horizontal_list_item.dart';
import 'package:second_lab/list_items/search_bar_list_item.dart';
import 'package:second_lab/list_items/suggestions_item.dart';
import 'package:second_lab/list_items/top_courses_item.dart';
import 'package:second_lab/pages/MainController.dart';
import 'package:second_lab/widgets/categories_widget.dart';
import 'package:second_lab/widgets/continue_watching_widget.dart';
import 'package:second_lab/widgets/course_card_widget.dart';
import 'package:second_lab/widgets/horizontal/toggle_button_horizontal_list_widget.dart';
import 'package:second_lab/widgets/horizontal/top_courses_horizontal_list_widget.dart';
import 'package:second_lab/widgets/search_bar_widget.dart';
import 'package:second_lab/widgets/top_courses_widget.dart';
import 'package:second_lab/widgets/top_nav_widget.dart';

import '../list_items/continue_watching_item.dart';
import '../list_items/horizontal/suggestions_horizontal_list_item.dart';
import '../list_items/horizontal/toggle_button_horizontal_list_item.dart';
import '../list_items/nav_list_item.dart';
import '../widgets/horizontal/suggestions_horizontal_list_widget.dart';
import '../widgets/suggestions_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  FocusNode searchFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    Get.lazyPut(() => MainController());
    // Așteaptă un frame înainte să deschidă tastatura
    WidgetsBinding.instance.addPostFrameCallback((_) {
      searchFocusNode.requestFocus();
    });
  }

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<MainController>();
    return Scaffold(
      body: Obx(
        () => ListView.builder(
          itemCount: controller.items.length,
          itemBuilder: (context, int index) {
            final item = controller.items[index];

            if (item is NavbarListItem) {
              return TopNavbarWidget(item: item);
            }
            if(item is SearchBarListItem){
              return SearchBarWidget(item: item);
            }
            if(item is ContinueWatchingItem){
              return ContinueWatchingWidget(item: item);
            }
            if(item is CourseCardItem){
              return CourseCardWidget(item: item);
            }
            if(item is CategoriesItem){
              return CategoriesWidget(item: item);
            }
            if(item is ToggleButtonHorizontalListItem){
              return ToggleButtonHorizontalListWidget();
            }
            if(item is SuggestionsItem){
              return SuggestionsWidget(item: item);
            }
            if (item is SuggestionsHorizontalListItem) {
              return SuggestionsHorizontalListWidget();
            }
            if(item is TopCoursesItem){
              return TopCoursesWidget(item: item);
            }
            if(item is TopCoursesHorizontalListItem){
              return TopCoursesHorizontalListWidget();
            }
          },
        ),
      ),
    );
  }
}

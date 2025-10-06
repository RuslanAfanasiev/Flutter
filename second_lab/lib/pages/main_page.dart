import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:second_lab/list_items/search_bar_list_item.dart';
import 'package:second_lab/pages/MainController.dart';
import 'package:second_lab/widgets/search_bar_widget.dart';
import 'package:second_lab/widgets/top_nav_widget.dart';

import '../list_items/nav_list_item.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Get.lazyPut(() => MainController());
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
          },
        ),
      ),
    );
  }
}

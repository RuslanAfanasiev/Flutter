import 'package:get/get.dart';
import 'package:second_lab/list_items/list_item.dart';
import 'package:second_lab/list_items/nav_list_item.dart';
import 'package:second_lab/list_items/search_bar_list_item.dart';

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
  }
}
import 'package:flutter/material.dart';
import 'package:second_lab/list_items/search_bar_list_item.dart';
import 'package:second_lab/resources/app_colors.dart';
import 'package:second_lab/resources/app_icons.dart';
import 'package:second_lab/resources/strings.dart';

class SearchBarWidget extends StatelessWidget{
  const SearchBarWidget({super.key, required this.item});

  final SearchBarListItem item;

  @override
  Widget build(BuildContext context){
    return Container(
      padding: const EdgeInsets.only(top: 91, left: 21, right: 21),
      child: Container(
        width: 349,
        height: 30,
        padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(100),
          border: Border.all(
            color: AppColors.color00434C.withOpacity(0.3),
            width: 1,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                // Using your SVG search icon
                SizedBox(
                  width: 18,
                  height: 18,
                  child: AppIcons.search,
                ),
                const SizedBox(width: 10),
                Text(
                  Strings.search,
                  style: TextStyle(
                    color: AppColors.color898888,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            // Optional right-side icon (for example, microphone or visualization)
            SizedBox(
              width: 18,
              height: 18,
              child: AppIcons.searchVisualisationIcon,
            ),
          ],
        ),
      ),
    );
  }
}
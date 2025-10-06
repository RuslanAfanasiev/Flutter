import 'package:flutter/material.dart';
import 'package:second_lab/list_items/search_bar_list_item.dart';
import 'package:second_lab/resources/app_colors.dart';
import 'package:second_lab/resources/app_icons.dart';
import 'package:second_lab/resources/strings.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key, required this.item});

  final SearchBarListItem item;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 349,
        height: 30,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
            color: AppColors.colorD9D9D9,
            width: 1,
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Text(
                  Strings.search,
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.color898888,
                  ),
                ),
              ),
            ),
            SizedBox(width: 20, height: 20, child: AppIcons.searchIcon),
          ],
        ),
      ),
    );
  }
}

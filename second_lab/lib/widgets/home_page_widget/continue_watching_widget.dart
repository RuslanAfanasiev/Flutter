import 'package:flutter/material.dart';
import 'package:second_lab/home_page_items/list_items/continue_watching_item.dart';

import '../../resources/app_colors.dart';
import '../../resources/strings.dart';

class ContinueWatchingWidget extends StatelessWidget {
  const ContinueWatchingWidget({super.key, required this.item});

  final ContinueWatchingItem item;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 182,
      height: 23,
      margin: const EdgeInsets.only(top: 20, left: 20),
      alignment: Alignment.centerLeft,
      child: Text(
        Strings.continueWatching,
        style: TextStyle(
          fontFamily: 'Plus Jakarta Sans',
          fontWeight: FontWeight.w700,
          fontSize: 18,
          letterSpacing: 0.02 * 18,
          height: 1.0,
          color: AppColors.color00434C,
        ),
      ),
    );
  }
}

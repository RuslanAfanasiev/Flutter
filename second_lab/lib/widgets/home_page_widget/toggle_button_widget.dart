import 'package:flutter/cupertino.dart';
import 'package:second_lab/home_page_items/list_items/toggle_button_item.dart';
import 'package:second_lab/resources/app_colors.dart';

class ToggleButtonWidget extends StatelessWidget {
  const ToggleButtonWidget({super.key, required this.item});

  final ToggleButtonItem item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        color: AppColors.colorFFFFFF,
        border: Border.all(color: AppColors.color00707E, width: 1.2),
        borderRadius: BorderRadius.circular(60),
      ),
      child: Center(
        child: Text(
          item.title,
          style: TextStyle(
            fontFamily: 'Plus Jakarta Sans',
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: AppColors.color00434C,
          ),
        ),
      ),
    );
  }
}

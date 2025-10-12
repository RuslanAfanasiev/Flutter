import 'package:flutter/material.dart';
import 'package:second_lab/data/toggle_button_data.dart';
import 'package:second_lab/widgets/toggle_button_widget.dart';

class ToggleButtonHorizontalListWidget extends StatelessWidget {
  const ToggleButtonHorizontalListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: toggleButton.length,
        itemBuilder: (context, index) {
          final cardItem = toggleButton[index];
          return Padding(
            padding: const EdgeInsets.only(left: 17),
            child: ToggleButtonWidget(item: cardItem),
          );
        },
      ),
    );
  }
}
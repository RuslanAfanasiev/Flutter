import 'package:flutter/material.dart';
import 'package:second_lab/widgets/suggestions_card_widget.dart';

import '../../data/suggestions_card_data.dart';

class SuggestionsHorizontalListWidget extends StatelessWidget {
  const SuggestionsHorizontalListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: suggestionsCardData.length,
        itemBuilder: (context, index) {
          final cardItem = suggestionsCardData[index];
          return Padding(
            padding: const EdgeInsets.only(right: 1),
            child: SuggestionsCardWidget(item: cardItem),
          );
        },
      ),
    );
  }
}
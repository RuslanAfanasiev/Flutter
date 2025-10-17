import 'package:flutter/material.dart';

import '../../../data/suggestions_card_data.dart';
import '../suggestions_card_widget.dart';

class SuggestionsHorizontalListWidget extends StatelessWidget {
  const SuggestionsHorizontalListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260,
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
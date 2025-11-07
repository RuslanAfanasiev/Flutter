import 'package:flutter/material.dart';
import 'package:second_lab/resources/app_colors.dart';
import 'package:second_lab/widgets/typography_page_widget/skill_chip_widget.dart';

class SkillsSectionWidget extends StatelessWidget {
  const SkillsSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Skills',
            style: TextStyle(
              fontFamily: 'Plus Jakarta Sans',
              color: AppColors.color00707E,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 10),
          Wrap(
            spacing: 10,
            runSpacing: 8,
            children: const [
              SkillChipWidget('Typography'),
              SkillChipWidget('Layout composition'),
              SkillChipWidget('Branding'),
              SkillChipWidget('Visual communication'),
              SkillChipWidget('Editorial design'),
            ],
          ),
        ],
      ),
    );
  }
}

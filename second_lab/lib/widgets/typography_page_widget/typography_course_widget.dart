import 'package:flutter/material.dart';
import 'package:second_lab/widgets/typography_page_widget/skills_section_widget.dart';
import 'package:second_lab/widgets/typography_page_widget/typography_header_widget.dart';

import 'course_description_section_widget.dart';
import 'course_details_section_widget.dart';
import 'course_info_section_widget.dart';
import 'enroll_section_widget.dart';

class TypographyCoursePage extends StatelessWidget {
  const TypographyCoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TypographyHeaderWidget(),
            //CourseInfoSectionWidget(),
            //CourseDescriptionSectionWidget(item: ),
            CourseDetailsSectionWidget(),
            SkillsSectionWidget(),
            EnrollSectionWidget(),
          ],
        ),
      ),
    );
  }
}
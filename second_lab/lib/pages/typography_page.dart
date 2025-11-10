import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:second_lab/home_page_items/typography_page_items/course_item.dart';
import 'package:second_lab/pages/TypographyController.dart';
import 'package:second_lab/widgets/typography_page_widget/course_description_section_widget.dart';
import 'package:second_lab/widgets/typography_page_widget/course_info_section_widget.dart';
import 'package:second_lab/widgets/typography_page_widget/enroll_section_widget.dart';
import 'package:second_lab/widgets/typography_page_widget/info_row_widget.dart';
import 'package:second_lab/widgets/typography_page_widget/instructor_section_widget.dart';
import 'package:second_lab/widgets/typography_page_widget/related_courses_section_widget.dart';
import 'package:second_lab/widgets/typography_page_widget/skill_chip_widget.dart';
import 'package:second_lab/widgets/typography_page_widget/skills_section_widget.dart';
import 'package:second_lab/widgets/typography_page_widget/typography_header_widget.dart';

class TypographyCoursePage extends StatefulWidget {
  const TypographyCoursePage({super.key});

  @override
  State<TypographyCoursePage> createState() => _TypographyCoursePageState();
}

class _TypographyCoursePageState extends State<TypographyCoursePage> {
  @override
  void initState() {
    super.initState();
    Get.lazyPut(() => TypographyController());
  }

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<TypographyController>();

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Obx(
        () => ListView.builder(
          itemCount: controller.items.length,
          itemBuilder: (context, int index) {
            final item = controller.items[index];

            if (item is CourseItem) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TypographyHeaderWidget(item: item),
                  CourseInfoSectionWidget(item: item),
                  CourseDescriptionSectionWidget(item: item),
                  SkillsSectionWidget(item: item),
                  InstructorSectionWidget(instructor: item.instructor),
                  RelatedCoursesSectionWidget(item: item.relatedCourses),
                  EnrollSectionWidget(item: item),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}

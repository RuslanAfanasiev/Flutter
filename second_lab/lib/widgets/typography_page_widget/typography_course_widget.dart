import 'package:flutter/material.dart';
import 'package:second_lab/resources/app_colors.dart';
import 'package:second_lab/resources/app_icons.dart';
import 'package:second_lab/resources/app_images.dart';

class TypographyCoursePage extends StatelessWidget {
  const TypographyCoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                // SafeArea aplicat la întregul conținut
                SafeArea(
                  bottom: false,
                  child: Column(
                    children: [
                      // Adaugă un overlay verde peste imagine
                      Stack(
                        children: [
                          ClipRRect(
                            child: Image.asset(
                              AppImages.typographyImage,
                              width: double.infinity,
                              height: 195,
                              fit: BoxFit.cover,
                            ),
                          ),
                          // Overlay verde pentru a face imaginea mai verzuie
                          Container(
                            width: double.infinity,
                            height: 195,
                            color: AppColors.color00707E.withOpacity(0.3),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                // Butonul Back (arrow) și Bookmark
                Padding(
                  padding: const EdgeInsets.only(left: 12, top: 25, right: 12),
                  child: Row(
                    children: [
                      IconButton(
                        icon: AppIcons.arrow,
                        iconSize: 28,
                        color: AppColors.colorD9EFF2,
                        onPressed: () => Navigator.pop(context),
                      ),
                      const Spacer(),
                      IconButton(
                        icon: AppIcons.bookMarkActive,
                        iconSize: 28,
                        color: AppColors.colorD9EFF2,
                        onPressed: () {
                          // Acțiune pentru bookmark
                        },
                      ),
                    ],
                  ),
                ),

                // Butonul Play în mijloc cu border alb
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      padding: const EdgeInsets.all(12),
                      child: AppIcons.playIcon,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Titlu și subtitlu
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Typography and Layout Design',
                    style: TextStyle(
                      color: AppColors.color00434C,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'Visual Communication College',
                    style: TextStyle(
                      color: AppColors.color00707E,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 10),

                  Row(
                    children: [
                      Icon(
                        Icons.people,
                        size: 18,
                        color: AppColors.color00707E,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        '3.4k students already enrolled',
                        style: TextStyle(color: AppColors.color00707E),
                      ),
                      const Spacer(),
                      Text(
                        '35\$',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: AppColors.color00434C,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),

                  // 📚 Course Details cu Read More la sfârșitul textului
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Course Details',
                        style: TextStyle(
                          color: AppColors.color00707E,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Plus Jakarta Sans',
                        ),
                      ),
                      const SizedBox(height: 8),
                      RichText(
                        textAlign: TextAlign.justify,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Visual Communication College's Typography and Layout Design course explores the art and science of typography and layout composition. Learn how to effectively use typefaces, hierarchy, alignment, and grid systems to create visually compelling designs. Gain hands-on experience in editorial design, branding, and digital layouts. ",
                              style: TextStyle(
                                fontSize: 13,
                                height: 1.5,
                                color: AppColors.color6C6C6C,
                                fontFamily: 'Plus Jakarta Sans',
                              ),
                            ),
                            WidgetSpan(
                              child: GestureDetector(
                                onTap: () {
                                  // Acțiune pentru Read More
                                },
                                child: Text(
                                  'Read More...',
                                  style: TextStyle(
                                    color: AppColors.color00707E,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Plus Jakarta Sans',
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),

                  // 📋 Info (Lectures, Learning time, Certificate)
                  Container(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        _buildInfoRow(
                          context,
                          AppIcons.lectureIcon,
                          'Lectures',
                          '50+ Lectures',
                          AppColors.color00707E,
                        ),
                        const SizedBox(height: 16),
                        _buildInfoRow(
                          context,
                          AppIcons.timeIcon,
                          'Learning Time',
                          '4 Weeks',
                          AppColors.color00707E,
                        ),
                        const SizedBox(height: 16),
                        _buildInfoRow(
                          context,
                          AppIcons.certificateIcon,
                          'Certification',
                          'Online Certificate',
                          AppColors.color00707E,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Skills
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
                    children: [
                      _SkillChip(
                        'Typography',
                        bgColor: AppColors.colorFFFFFF,
                        textColor: AppColors.color00434C,
                        borderColor: AppColors.colorDEDEDE,
                      ),
                      _SkillChip(
                        'Layout composition',
                        bgColor: AppColors.colorFFFFFF,
                        textColor: AppColors.color00434C,
                        borderColor: AppColors.colorDEDEDE,
                      ),
                      _SkillChip(
                        'Branding',
                        bgColor: AppColors.colorFFFFFF,
                        textColor: AppColors.color00434C,
                        borderColor: AppColors.colorDEDEDE,
                      ),
                      _SkillChip(
                        'Visual communication',
                        bgColor: AppColors.colorFFFFFF,
                        textColor: AppColors.color00434C,
                        borderColor: AppColors.colorDEDEDE,
                      ),
                      _SkillChip(
                        'Editorial design',
                        bgColor: AppColors.colorFFFFFF,
                        textColor: AppColors.color00434C,
                        borderColor: AppColors.colorDEDEDE,
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),

                  // ENROLL button
                  Center(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.color00707E,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        minimumSize: const Size(double.infinity, 55),
                      ),
                      child: const Text(
                        'ENROLL NOW',
                        style: TextStyle(
                          fontFamily: 'Plus Jakarta Sans',
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Free trial
                  Center(
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Start your 7-day free Trial',
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Plus Jakarta Sans',
                          color: AppColors.color6C6C6C,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // helper widget pentru info rows
  Widget _buildInfoRow(BuildContext context, Widget icon, String label, String value, Color color) {
    return Row(
      children: [
        // Prima coloană (60%) - Icon și Label
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.6 - 32, // 60% minus padding
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconTheme(
                data: IconThemeData(color: color, size: 22),
                child: icon,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  label,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    color: color,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
        // A doua coloană (40%) - Value
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.4 - 32, // 40% minus padding
          child: Text(
            value,
            style: TextStyle(
              color: AppColors.color6C6C6C,
              fontSize: 16,
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );
  }
}

// Chip pentru Skills
class _SkillChip extends StatelessWidget {
  final String label;
  final Color bgColor;
  final Color borderColor;
  final Color textColor;

  const _SkillChip(
      this.label, {
        required this.bgColor,
        required this.borderColor,
        required this.textColor,
      });

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(
        label,
        style: TextStyle(color: textColor, fontWeight: FontWeight.w500),
      ),
      backgroundColor: bgColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
    );
  }
}
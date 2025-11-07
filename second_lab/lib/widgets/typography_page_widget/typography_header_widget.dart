import 'package:flutter/material.dart';
import 'package:second_lab/resources/app_colors.dart';
import 'package:second_lab/resources/app_icons.dart';
import 'package:second_lab/resources/app_images.dart';

class TypographyHeaderWidget extends StatelessWidget {
  const TypographyHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SafeArea(
          bottom: false,
          child: Stack(
            children: [
              ClipRRect(
                child: Image.asset(
                  AppImages.typographyImage,
                  width: double.infinity,
                  height: 195,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                width: double.infinity,
                height: 195,
                color: AppColors.color00707E.withOpacity(0.6),
              ),
            ],
          ),
        ),
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
                onPressed: () {},
              ),
            ],
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.center,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              padding: const EdgeInsets.all(12),
              child: AppIcons.playIcon,
            ),
          ),
        ),
      ],
    );
  }
}

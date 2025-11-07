import 'package:flutter/material.dart';
import 'package:second_lab/resources/app_colors.dart';

class EnrollSectionWidget extends StatelessWidget {
  const EnrollSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          ElevatedButton(
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
          const SizedBox(height: 20),
          TextButton(
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
        ],
      ),
    );
  }
}

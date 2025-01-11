import 'package:flutter/material.dart';

import '../themes/app_colors.dart';
import '../themes/app_text_styles.dart';


class CustomButton extends StatelessWidget {
  final String title;
  final double? height;
  final double? width;
  final VoidCallback onTap;

  const CustomButton({super.key, required this.title,this.height, required this.onTap, this.width, });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,

      child:
      Container(
        height: 50,
        decoration: ShapeDecoration(
          gradient: const LinearGradient(
            begin: Alignment(1.00, 0.00),
            end: Alignment(-1, 0),
            colors: [ AppColors.primaryGreenish,AppColors.primaryBlue,],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
        ),
        child: Center(
          child: Text(
            title?? 'Continue',
            style:AppTextStyles.boldStyle.copyWith(  color: AppColors.primaryWhite,
              fontSize: 15,
              fontWeight: FontWeight.w600,),
          ),
        ),
      ),
    );
  }
}

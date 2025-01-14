import 'package:flutter/material.dart';

import '../themes/app_colors.dart';

class CustomContainer extends StatelessWidget {
  final Color containerColor;
  final String title;
  const CustomContainer({super.key, required this.containerColor, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 8),
    margin: const EdgeInsets.only(right: 6),
    decoration: ShapeDecoration(
    color:containerColor,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(12),
    ),
    ),
    child: Center(
    child: Text(
title,
    style: const TextStyle(
    color:AppColors.primaryWhite,
    fontSize: 8,
    fontWeight: FontWeight.w500,
    ),
    ),
    ));
  }
}
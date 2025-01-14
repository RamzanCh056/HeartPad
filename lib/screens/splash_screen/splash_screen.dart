import 'dart:async';
import 'package:flutter/material.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';
import '../../themes/app_colors.dart';
import '../onboaring_screen/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 4),
      () => Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const OnboardingScreen()
      //DashboardScreen(),
      ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.primaryWhite,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.transparent,
                backgroundImage:
                    AssetImage("assets/icons/splash_screen/Group 158.png"),
              ),
              Spacer(),
              SimpleCircularProgressBar(
                size: 20,
                backStrokeWidth: 4,
                progressStrokeWidth: 4,
                progressColors: [
                  AppColors.primaryBlue,
                  AppColors.primaryGreenish,
                ],
                backColor: AppColors.borderColor,
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

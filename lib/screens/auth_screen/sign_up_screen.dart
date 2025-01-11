import 'package:flutter/material.dart';
import 'package:heart_pad/screens/auth_screen/sign_in_screen.dart';
import 'package:heart_pad/screens/auth_screen/what_brought.dart';
import 'package:heart_pad/themes/app_colors.dart';
import 'package:heart_pad/themes/app_text_styles.dart';
import 'package:heart_pad/widget/custom_button.dart';
import 'package:heart_pad/widget/navigation.dart';
import 'package:heart_pad/widget/reusable_textfiled.dart';
import 'package:svg_flutter/svg.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                children: [
                  // const SizedBox(
                  //   height: 30,
                  // ),
                  const Center(
                    child: CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage(
                          "assets/icons/splash_screen/Group 158.png"),
                    ),
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  Center(
                    child: Text('Create an Account',
                        style: AppTextStyles.boldStyle.copyWith(
                          color: AppColors.primaryBlack,
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        )),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Center(
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                              text: 'Sign up to start your journey with ',
                              // style: AppTextStyles.boldStyle.copyWith(
                              //   color: AppColors.primaryBlack,
                              //   fontSize: 14,
                              //   fontWeight: FontWeight.w400,
                              // )
                          ),
                          TextSpan(
                              text: 'HeartPad',
                              style: AppTextStyles.boldStyle.copyWith(
                                color: AppColors.primaryBlue,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              )),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 25),
                  Text('Username',
                      style: TextStyle(
                        fontSize: 12,
                          fontWeight: FontWeight.w500
                      ),
                      // style: AppTextStyles.boldStyle.copyWith(
                      //   color: AppColors.titleColor,
                      //   fontSize: 12,
                      //   fontWeight: FontWeight.w500,
                      // )
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  ReusableTextForm(
                    filledColor: Colors.grey.shade100,
                    hintText: 'User Name',
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(12  ),
                      child: SvgPicture.asset(
                          height: 24,
                          width: 24,
                          "assets/icons/auth/hugeicons_user.svg"),
                    ),
                  ),
                  const SizedBox(
                    height: 17,
                  ),
                  Text('E-mail',
                    style: TextStyle(
                      fontSize: 12,
                        fontWeight: FontWeight.w500
                    ),
                      // style: AppTextStyles.boldStyle.copyWith(
                      //   color: AppColors.titleColor,
                      //   fontSize: 12,
                      //   fontWeight: FontWeight.w500,
                      // )
     ),
                  const SizedBox(
                    height: 6,
                  ),
                  ReusableTextForm(
                    filledColor: Colors.grey.shade100,
                    hintText: 'Enter your mail',
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(12  ),
                      child: SvgPicture.asset(
                          height: 24,
                          width: 24,
                          "assets/icons/auth/Message.svg"),
                    ),
                  ),
                  const SizedBox(
                    height: 17,
                  ),
                  Text('Date of Birth',
                    style: TextStyle(
                      fontSize: 12,
                        fontWeight: FontWeight.w500
                    ),
                      // style: AppTextStyles.boldStyle.copyWith(
                      //   color: AppColors.titleColor,
                      //   fontSize: 12,
                      //   fontWeight: FontWeight.w500,
                      // )
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  ReusableTextForm(
                    filledColor: Colors.grey.shade100,
                    hintText: 'Choose your date of birth',
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(12  ),
                      child: SvgPicture.asset(
                          height: 24,
                          width: 24,
                          "assets/icons/auth/solar_calendar-outline.svg"),
                    ),
                  ),
                  const SizedBox(
                    height: 17,
                  ),
                  Text('Phone Number',
                    style: TextStyle(
                      fontSize: 12,
                        fontWeight: FontWeight.w500
                    ),
                      // style: AppTextStyles.boldStyle.copyWith(
                      //   color: AppColors.titleColor,
                      //   fontSize: 12,
                      //   fontWeight: FontWeight.w500,
                      // )
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  ReusableTextForm(
                    filledColor: Colors.grey.shade100,
                    hintText: 'Enter Phone Number',
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(12  ),
                      child: SvgPicture.asset(
                          height: 24,
                          width: 24,
                          "assets/icons/auth/solar_phone-linear.svg"),
                    ),
                  ),
                  const SizedBox(
                    height: 17,
                  ),
                  Text('Password',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500
                    ),
                      // style: AppTextStyles.boldStyle.copyWith(
                      //   color: AppColors.titleColor,
                      //   fontSize: 12,
                      //   fontWeight: FontWeight.w500,
                      // )
     ),
                  const SizedBox(
                    height: 6,
                  ),
                  ReusableTextForm(
                    filledColor: Colors.grey.shade100,
                    hintText: 'Enter your password',
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(12  ),
                      child: SvgPicture.asset(
                          height: 24, width: 24, "assets/icons/auth/Lock.svg"),
                    ),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Padding(
                     padding: const EdgeInsets.only(left: 6,right: 6),
                    child: CustomButton(title: 'Sign Up', onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const WhatBroughtU()));

                    //  NavigateToScreen.navigateTo(context, const WhatBroughtU());
                    }),
                  ),
                  const SizedBox(height: 49,),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignInScreen()));
                     // NavigateToScreen.navigateTo(context, const SignInScreen());
                     },
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Already have an account? ',
                            // style: AppTextStyles.boldStyle.copyWith(
                            //   color: AppColors.primaryBlack,
                            //   fontSize: 13,
                            //   fontWeight: FontWeight.w500,
                            // )
                       ),
                        const SizedBox(
                          width: 2,
                        ),
                        Text('Sign In',
                            style: AppTextStyles.boldStyle.copyWith(
                              color: AppColors.primaryBlue,
                              fontSize: 11,
                              fontWeight: FontWeight.w600,
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

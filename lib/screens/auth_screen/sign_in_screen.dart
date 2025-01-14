import 'package:flutter/material.dart';
import 'package:heart_pad/screens/auth_screen/sign_up_screen.dart';
import 'package:heart_pad/screens/bottom_nav_app_bar/bottom_nav_app_bar.dart';
import 'package:heart_pad/themes/app_colors.dart';
import 'package:heart_pad/themes/app_text_styles.dart';
import 'package:heart_pad/widget/custom_button.dart';
import 'package:heart_pad/widget/reusable_textfiled.dart';
import 'package:svg_flutter/svg.dart';

import '../../widget/navigation.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                children: [
                  const SizedBox(
                    height: 60,
                  ),
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
                    child: Text('Welcome Back',
                        style: AppTextStyles.montserrat.copyWith(
                          color: AppColors.primaryBlack,
                          fontSize: 16,
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
                          const TextSpan(
                              text: 'Access your ',
                              // style: AppTextStyles.boldStyle.copyWith(
                              //   color: AppColors.primaryBlack,
                              //   fontSize: 14,
                              //   fontWeight: FontWeight.w400,
                              // )
                          ),
                          TextSpan(
                              text: 'HeartPad ',
                              style: AppTextStyles.montserrat.copyWith(
                                color: AppColors.primaryBlue,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              )),
                          const TextSpan(
                              text: 'journey by logging in',
                              // style: AppTextStyles.boldStyle.copyWith(
                              //   color: AppColors.primaryBlack,
                              //   fontSize: 14,
                              //   fontWeight: FontWeight.w400,
                              // )
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 25),

                  const Text('E-mail',
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
                  const Text('Password',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500
                    ),
                      // style: AppTextStyles.boldStyle.copyWith(
                      //   color: AppColors.titleColor,
                      //   fontSize: 12,
                      //   fontWeight: FontWeight.w500,
                      // )),
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
                    child: CustomButton(
                        title: 'Sign In', onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const BottomNavAppBar()));
                    }),
                  ),


                ],
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignUpScreen()));

               // NavigateToScreen.navigateTo(context, const SignUpScreen());
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Don’t have an account? ',
                      // style: AppTextStyles.boldStyle.copyWith(
                      //   color: AppColors.primaryBlack,
                      //   fontSize: 13,
                      //   fontWeight: FontWeight.w500,
                      // )
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  Text('Sign Up',
                      style: AppTextStyles.montserrat.copyWith(
                        color: AppColors.primaryBlue,
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                      ))
                ],
              ),
            ),
            const SizedBox(height: 25,),
          ],
        ),
      ),
    );
  }
}

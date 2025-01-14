import 'package:flutter/material.dart';
import 'package:heart_pad/screens/auth_screen/sign_up_screen.dart';
import 'package:heart_pad/themes/app_colors.dart';
import 'package:heart_pad/themes/app_text_styles.dart';
import 'package:heart_pad/widget/custom_button.dart';
import 'package:heart_pad/widget/reusable_textfiled.dart';
import 'package:svg_flutter/svg.dart';

import '../../const/images.dart';
import '../../widget/navigation.dart';

class AvatarScreen extends StatefulWidget {
  const AvatarScreen({super.key});

  @override
  State<AvatarScreen> createState() => _AvatarScreenState();
}

class _AvatarScreenState extends State<AvatarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery
            .of(context)
            .padding
            .top),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child:
              ListView(
                padding: const EdgeInsets.symmetric(
                    horizontal: 15, vertical: 10),

                children: [
                  const SizedBox(height: 60,),
                  Center(
                    child: Text(
                        'Select Your Avatar',
                        style: AppTextStyles.montserrat.copyWith(
                          color: AppColors.primaryBlack,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,)
                    ),
                  ),
                  const SizedBox(height: 6,),
                  Text(
                      'Choose the avatar that represents you best!',
                      textAlign: TextAlign.center,
                      // style: AppTextStyles.boldStyle.copyWith(
                      //   color: AppColors.primaryBlack,
                      //   fontSize: 13,
                      //   fontWeight: FontWeight.w500,)
                  ),
                  const SizedBox(height: 22,),
                  GridView.builder(
                    itemCount: avatarList.length,
                    physics: NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10),
                    itemBuilder: (BuildContext context, int index) {
                      return Image.asset(avatarList[index]);
                    },),

                  const SizedBox(height: 30,),
                  CustomButton(title: "Proceed", onTap: () {}),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}

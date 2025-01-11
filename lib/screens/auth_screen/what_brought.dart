import 'package:flutter/material.dart';
import 'package:heart_pad/screens/auth_screen/avatar_screen.dart';
import 'package:heart_pad/screens/auth_screen/sign_up_screen.dart';
import 'package:heart_pad/themes/app_colors.dart';
import 'package:heart_pad/themes/app_text_styles.dart';
import 'package:heart_pad/widget/custom_button.dart';
import 'package:heart_pad/widget/reusable_textfiled.dart';
import 'package:svg_flutter/svg.dart';

import '../../widget/navigation.dart';

class WhatBroughtU extends StatefulWidget {
  const WhatBroughtU({super.key});

  @override
  State<WhatBroughtU> createState() => _WhatBroughtUState();
}

class _WhatBroughtUState extends State<WhatBroughtU> {
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
              child:
            ListView(
              padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 10),

              children: [
                const SizedBox(height: 60,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'What brought you here today? ',
                      style: AppTextStyles.boldStyle.copyWith(      color:AppColors.primaryBlack,
                        fontSize: 17,
                        fontWeight: FontWeight.w600,)
                    ),
                    const SizedBox(width: 6,),
                    Text(
                      '😊',
                      style: AppTextStyles.boldStyle.copyWith(
                        //color: Colors.black,
                        fontSize: 17,
                        //fontWeight: FontWeight.w600,
                      )
                    )

                  ],
                ),
                const SizedBox(height: 6,),
                Text(
                  'Tell us your goals so we can guide you on\nyour path to success!',
                  textAlign: TextAlign.center,
                  // style: AppTextStyles.boldStyle.copyWith(
                  //  // color: AppColors.primaryBlack,
                  //   fontSize: 12,
                  // //  fontWeight: FontWeight.w500,
                  // )
                ),
                const SizedBox(height: 17,),
                Container(

                  decoration: ShapeDecoration(
                    color: Colors.grey.shade100,

                    //color:AppColors.primaryWhite,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                       ReusableTextForm(
                        filledColor: Colors.grey.shade100,

                        hintText:  'Write your message',
                        focusBorderColor: Colors.transparent,
                        maxLine: 6,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                        child: Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              radius: 20,
                             backgroundColor: Colors.grey.shade200,

                              child: SvgPicture.asset("assets/icons/auth/lucide_image.svg"),
                            ),
                            const SizedBox(width: 6,),
                            CircleAvatar(
                              radius: 20,
                             backgroundColor: Colors.grey.shade200,
                              child: SvgPicture.asset("assets/icons/auth/eva_attach-2-fill.svg"),
                            ),

                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 25,),
                CustomButton(title: "Send", onTap: (){

                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const AvatarScreen()));
                }),
                const SizedBox(height: 25,),
                GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const AvatarScreen()));


                    },
                  child: Center(
                    child: RichText(text: TextSpan(

                      text: 'Skip',
                        style: AppTextStyles.boldStyle.copyWith(
                          color: AppColors.primaryBlue
                          ,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,

                    )


                    )),
                  ),
                ),
                const SizedBox(height: 25,),
              ],
            ),
            ),

          ],
        ),
      ),
    );
  }
}

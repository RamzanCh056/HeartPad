import 'dart:ui';


import 'package:flutter/material.dart';
import 'package:heart_pad/themes/app_colors.dart';
import 'package:heart_pad/widget/custom_button.dart';
import 'package:svg_flutter/svg.dart';

// for trigger any action
class TopicTriggerPopUp extends StatelessWidget {
  final VoidCallback onTapView;

  const TopicTriggerPopUp({super.key, required this.onTapView,});

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
      child: Dialog(
        backgroundColor: const Color(0xf73080808),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 30),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'This entry discusses topics that might be triggering!',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.80),
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 30,),
              Center(
                child: GestureDetector(
                  onTap: onTapView,
                  child: Container(

                    padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                    decoration: ShapeDecoration(
                      color: const Color(0xFF70C848),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                    ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'View',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  ),
                ),
              )



            ],
          ),
        ),
      ),
    );
  }
}



// for Author Message

class AuthorMessage extends StatelessWidget {


  const AuthorMessage({super.key,});

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
      child: Dialog(
        backgroundColor: AppColors.primaryWhite,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
             const Row(
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 Spacer(),
                 Text(
                   'Message to Author',
                   style: TextStyle(
                     color: Colors.black,
                     fontSize: 14,
                     fontWeight: FontWeight.w600,
                   ),
                 ),
                 Spacer(),
                 Text(
                   '1 of 5',
                   style: TextStyle(
                     color: Colors.black,
                     fontSize: 10,
                     fontWeight: FontWeight.w500,
                   ),
                 )
               ],
             ),
              const SizedBox(height: 16,),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                decoration: ShapeDecoration(
                  color: const Color(0xf07FF2A23),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                ),
                child:
                const Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Note',
                        style: TextStyle(
                          color: Color(0xFFFF2A23),
                          fontSize: 11,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextSpan(
                        text: ': Please ensure your messages remain respectful and considerate.',
                        style: TextStyle(
                          color: Color(0xFFFF2A23),
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 13,),
              Container(
                padding: EdgeInsets.zero,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 0.3, color: Color(0xFFF5F5F5)),
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                   Padding(
                     padding:  const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                     child: Stack(
                        children: [
                          TextFormField(
                            maxLines: 6,
                            decoration: const InputDecoration(

                              border: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              filled: true,
                              fillColor: Colors.white,
                              hintText: "Ex: You’re doing great",
                              hintStyle: TextStyle(
                                  fontSize: 12,fontWeight: FontWeight.w400,color: AppColors.hintColor
                              ),

                            ),
                          ),
                          const Positioned(
                            bottom: 10,
                            right: 10,
                            child: Text(
                              '100 - 150 Character',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF121111),
                                fontSize: 9,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          )
                        ],
                      ),
                   ),
                    const Divider(thickness: 0.3,height: 1, color: Color(0xFFF5F5F5),),
                    Padding(padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(Icons.format_bold_rounded,color: Color(0xf70999999),),
                        const Icon(Icons.format_italic_sharp,color: Color(0xf70999999),),
                        const Icon(Icons.strikethrough_s_outlined,color: Color(0xf70999999),),
                        const Icon(Icons.emoji_emotions,color: Color(0xf70999999),),
                      SvgPicture.asset(height: 25,width: 25,color: const Color(0xf70999999),"assets/icons/splash_screen/ri_reset-left-line.svg"),
                      SvgPicture.asset(height: 25,width: 25,color: const Color(0xf70999999),"assets/icons/splash_screen/ri_reset-left-line.svg"),
                        const Icon(Icons.format_underlined_sharp,color: Color(0xf70999999),),
                      SvgPicture.asset(height: 25,width: 25,color: const Color(0xf70999999),"assets/icons/splash_screen/ic_baseline-list.svg"),
                      SvgPicture.asset(height: 25,width: 25,color: const Color(0xf70999999),"assets/icons/splash_screen/gravity-ui_list-ol.svg"),

                      ],
                    ),)

                  ],
                ),
              ),
              const SizedBox(height: 18,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: SizedBox(
                  height: 45,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          child: Container(
                           padding: const EdgeInsets.symmetric(horizontal: 15,),
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(width: 1, color: Color(0xFF5AD3EB)),
                                borderRadius: BorderRadius.circular(24),
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                'Cancel',
                                style: TextStyle(
                                  color: Color(0xFF5AD3EB),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 40,),
                      Expanded(child: CustomButton(title: "Send", onTap: (){}))
                    ],
                  ),
                ),
              )



            ],
          ),
        ),
      ),
    );
  }
}

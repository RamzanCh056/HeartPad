import 'package:flutter/material.dart';
import 'package:heart_pad/pop_ups/pop_ups.dart';
import 'package:heart_pad/themes/app_colors.dart';
import 'package:heart_pad/themes/app_text_styles.dart';
import 'package:heart_pad/widget/custom_container.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:svg_flutter/svg.dart';

class ExplainationScreen extends StatefulWidget {
  const ExplainationScreen({super.key});

  @override
  State<ExplainationScreen> createState() => _ExplainationScreenState();
}

class _ExplainationScreenState extends State<ExplainationScreen> {
  bool   isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryWhite,
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: ShapeDecoration(
                color: const Color(0xFFF6FFF1).withOpacity(0.6),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6)),
              ),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    GestureDetector(
                        onTap:(){
                          Navigator.pop(context);
                        },
                        child: const Icon(Icons.close,color: AppColors.primaryBlack,)),
                      const Icon(Icons.favorite_rounded,color: AppColors.primaryRed,)
                    ],
                  ),
                  const SizedBox(height: 21,),
                  const Text('San Francisco, CA, USA',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 9,
                        fontWeight: FontWeight.w400,
                      )),
                  const SizedBox(
                    height: 9,
                  ),
                  const Text(
                    'Exploring the City of Lights',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 11,
                  ),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Paris was everything I dreamed it would be',
                          style: AppTextStyles.montserrat.copyWith(   color: Colors.black,
                            fontSize: 11,
                            fontWeight: FontWeight.w700,)
                        ),
                        TextSpan(
                          text: '—beautiful streets, iconic landmarks, and the best croissants I’ve ever had. Climbing the Eiffel Tower was surreal, and I couldn’t stop taking photos of the breathtaking views. ',
                          style:AppTextStyles.montserrat.copyWith(  color: const Color(0xf90000000),
                            fontSize: 11,
                            fontWeight: FontWeight.w400,)
                        ),

                        TextSpan(
                          text: 'The city’s charm was everywhere  ',
                          style: AppTextStyles.montserrat.copyWith( color: AppColors.primaryBlack,
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.lineThrough,)
                        ),
                        TextSpan(
                          text: 'from the quaint cafés lining the streets to the lively buzz of the Seine at sunset. Walking through the ',
                          style:AppTextStyles.montserrat.copyWith( color: const Color(0xf90000000),
                            fontSize: 11,
                            fontWeight: FontWeight.w400,)
                        ),
                        TextSpan(
                          text: 'Louvre',
                          style: AppTextStyles.montserrat.copyWith(   color: const Color(0xf90000000),
                            fontSize: 11,
                            fontWeight: FontWeight.w700,)
                        ),
                        TextSpan(
                          text: ' and seeing masterpieces in person was unforgettable, and strolling along the Champs-Élysées felt like stepping into a movie. ',
                          style:AppTextStyles.montserrat.copyWith( color:const Color(0xf90000000),
                            fontSize: 11,
                            fontWeight: FontWeight.w400,)
                        ),
                        TextSpan(
                          text: 'Every moment in Paris felt magical, a perfect blend of history, culture, and beauty that left me wanting more.',
                          style:AppTextStyles.mooli.copyWith(
                            color: const Color(0xFFFF0000),
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                          )
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomContainer(
                          containerColor: AppColors.yellowGreen,
                          title: 'TechJourney'),
                      SizedBox(
                        width: 4,
                      ),
                      CustomContainer(
                          containerColor: AppColors.primaryYellow,
                          title: 'Creativity'),
                      SizedBox(
                        width: 4,
                      ),
                      CustomContainer(
                          containerColor: AppColors.primaryPink,
                          title: 'Adventure'),
                      SizedBox(
                        width: 4,
                      ),
                      CustomContainer(
                          containerColor: AppColors.primaryBlue, title: 'Joy'),
                      SizedBox(
                        width: 4,
                      ),
                      Spacer(),
                      Text(
                        'Dec 7, 2024',
                        style: TextStyle(
                          color: AppColors.primaryBlack,
                          fontSize: 9,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                     padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                      margin: const EdgeInsets.only(right: 5),
                      decoration: ShapeDecoration(
                        color: Colors.white.withOpacity(0.47999998927116394),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 0.4, color: Color(0xFFF4F4F4)),
                          borderRadius: BorderRadius.circular(22),
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                              height: 16,
                              width: 16,
                              fit: BoxFit.cover,
                              "assets/icons/home_screen/message.png"),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            'Support',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                            ),
                          )

                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                     padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                      margin: const EdgeInsets.only(right: 5),
                      decoration: ShapeDecoration(
                        color: Colors.white.withOpacity(0.47999998927116394),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 0.4, color: Color(0xFFF4F4F4)),
                          borderRadius: BorderRadius.circular(22),
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                              height: 16,
                              width: 16,
                              fit: BoxFit.cover,
                              "assets/icons/home_screen/save.png"),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            'Save',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                            ),
                          )

                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                     padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                      margin: const EdgeInsets.only(right: 5),
                      decoration: ShapeDecoration(
                        color: Colors.white.withOpacity(0.47999998927116394),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(width: 0.4, color: Color(0xFFF4F4F4)),
                          borderRadius: BorderRadius.circular(22),
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                              height: 16,
                              width: 16,
                              fit: BoxFit.cover,
                              "assets/icons/home_screen/flag.png"),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            'Report',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                            ),
                          )

                        ],
                      ),
                    ),
                  ),


                ],
              ),
            ),
            const SizedBox(height: 25,),
            const Text(
              'Similar Journal',
              style: TextStyle(
                color: Colors.black,
                fontSize: 13,
                fontWeight: FontWeight.w600,
                letterSpacing: -0.32,
              ),
            ),
            const SizedBox(height: 9,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: List.generate(
                  4,
                      (index) => Container(
                    width: MediaQuery.sizeOf(context).width - 50,
                    padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    margin: const EdgeInsets.only(right: 10),
                    decoration: ShapeDecoration(
                      color: const Color(0xFFF6FFF1).withOpacity(0.6),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('San Francisco, CA, USA',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 9,
                                  fontWeight: FontWeight.w400,
                                )),
                            Icon(
                              Icons.more_horiz,
                              color: AppColors.primaryBlack,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 9,
                        ),
                        const Text(
                          'Exploring the City of Lights',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          height: 11,
                        ),
                        const Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Paris was everything',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              TextSpan(
                                text:
                                ' I dreamed it would be—beautiful streets, iconic landmarks, and the best croissants I’ve ever had. Climbing the Eiffel Tower was surreal, and I couldn’t stop taking...',
                                style: TextStyle(
                                  color: Color(0xf90000000),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const CustomContainer(
                                containerColor: AppColors.yellowGreen,
                                title: 'TechJourney'),
                            const SizedBox(
                              width: 4,
                            ),
                            const CustomContainer(
                                containerColor: AppColors.primaryYellow,
                                title: 'Creativity'),
                            const SizedBox(
                              width: 4,
                            ),
                            const CustomContainer(
                                containerColor: AppColors.primaryPink,
                                title: 'Adventure'),
                            const SizedBox(
                              width: 4,
                            ),
                            const CustomContainer(
                                containerColor: AppColors.primaryBlue,
                                title: 'Joy'),
                            const Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                isFavorite == false
                                    ? GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isFavorite = !isFavorite;
                                    });
                                  },
                                  child: const Icon(
                                    Icons.favorite_border_rounded,
                                    color: AppColors.grey28,
                                  ),
                                )
                                    : GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isFavorite = !isFavorite;
                                    });
                                  },
                                  child: const Icon(
                                    Icons.favorite_rounded,
                                    color: AppColors.primaryRed,
                                  ),
                                ),
                                const SizedBox(
                                  height: 1.8,
                                ),
                                const Text(
                                  'Dec 7, 2024',
                                  style: TextStyle(
                                    color: AppColors.primaryBlack,
                                    fontSize: 9,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 9,),

      
          ],
        ),
      ),
    );
  }


}



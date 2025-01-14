import 'package:flutter/material.dart';
import 'package:heart_pad/pop_ups/pop_ups.dart';
import 'package:heart_pad/screens/bottom_nav_app_bar/screens_navigate_from_bottomBar/home_screen/explaination_screen.dart';
import 'package:heart_pad/themes/app_colors.dart';
import 'package:heart_pad/themes/app_text_styles.dart';
import 'package:heart_pad/widget/custom_container.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:svg_flutter/svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List tabsName = [
    'For you',
    'Location',
    'Trending',
    'Community',
  ];
  int _currentIndex = 0;
  bool isActive = false;
  bool isFavorite = false;

  // List to manage active state of each container
  List<bool> isActiveList = [false, false, false];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('HeartPad',
                  style: AppTextStyles.mPlus.copyWith(
                    color: AppColors.primaryBlue,
                    fontSize: 19,
                    fontWeight: FontWeight.w700,
                  )),
              const SizedBox(
                width: 5,
              ),
              const CircleAvatar(
                radius: 10,
                backgroundColor: Colors.transparent,
                backgroundImage:
                    AssetImage("assets/icons/splash_screen/Group 158.png"),
              ),
              const Spacer(),
              CircleAvatar(
                radius: 20,
                backgroundColor: const Color(0xf50F8F8F8),
                child: SvgPicture.asset(
                    "assets/icons/home_screen/basil_notification-outline.svg"),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Stack(
            clipBehavior: Clip.none,
            children: [
              const Image(
                width: double.infinity,
                fit: BoxFit.cover,
                image:
                    AssetImage("assets/icons/home_screen/Group 1000022191.png"),
              ),
              Positioned(
                top: 35,
                bottom: 0,
                left: 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text('What’s been on your mind\nrecently?',
                        style: TextStyle(
                            color: AppColors.primaryWhite,
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            letterSpacing: -0.32)),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      child: const Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Write',
                            style: TextStyle(
                              color: AppColors.secondaryBlue,
                              fontSize: 11,
                              fontWeight: FontWeight.w600,
                              letterSpacing: -0.32,
                            ),
                          ),
                          SizedBox(width: 5),
                          Icon(
                            Icons.mode_edit_outline_outlined,
                            color: AppColors.secondaryBlue,
                            size: 15,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(height: 7),
          const Text(
            'Categories',
            style: TextStyle(
              color: AppColors.primaryBlack,
              fontSize: 13,
              fontWeight: FontWeight.w600,
              letterSpacing: -0.32,
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: List.generate(
              tabsName.length,
              (index) => GestureDetector(
                onTap: () {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  margin: const EdgeInsets.only(right: 10),
                  decoration: ShapeDecoration(
                    color: _currentIndex == index
                        ? AppColors.primaryGreen
                        : AppColors.tabsDisable.withOpacity(0.1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      tabsName[index],
                      style: TextStyle(
                        color: _currentIndex == index
                            ? AppColors.primaryWhite
                            : AppColors.text7D,
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 11,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            decoration: ShapeDecoration(
              color: const Color(0xFFF6FFF1).withOpacity(0.6),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('San Francisco, CA, USA',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 9,
                          fontWeight: FontWeight.w400,
                        )),
                    PopupMenuButton(
                        padding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        itemBuilder: (context) {
                          return [
                            PopupMenuItem(
                              height: 30,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 2),
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AuthorMessage();
                                  },
                                );

                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
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
                            PopupMenuItem(
                              height: 30,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 2),
                              onTap: () {},
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
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
                            PopupMenuItem(
                              height: 30,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 2),
                              onTap: () {},
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
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
                          ];
                        },
                        offset: const Offset(0, 30),
                        color: AppColors.primaryWhite,
                        surfaceTintColor: AppColors.primaryWhite,
                        icon: const Icon(
                          Icons.more_horiz,
                          color: AppColors.primaryBlack,
                        )),
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return TopicTriggerPopUp(
                              onTapView: () {
                                 Navigator.push(
                                   context,
                                   MaterialPageRoute(
                                     builder: (context) => const ExplainationScreen(),
                                   ),
                                 );

                              },
                            );
                          },
                        );

                      },
                      child: const CustomContainer(
                          containerColor: AppColors.yellowGreen,
                          title: 'TechJourney'),
                    ),
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
                        containerColor: AppColors.primaryBlue, title: 'Joy'),
                    const SizedBox(
                      width: 4,
                    ),
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
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: ShapeDecoration(
              color: const Color(0xFFF1F8FF).withOpacity(0.6),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6)),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
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
                SizedBox(
                  height: 9,
                ),
                Text(
                  'Exploring the City of Lights',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 11,
                ),
                Text.rich(
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
                SizedBox(
                  height: 12,
                ),
                Row(
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.favorite_border_rounded,
                          color: AppColors.grey28,
                        ),
                        SizedBox(
                          height: 1.8,
                        ),
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
                )
              ],
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: ShapeDecoration(
              color: const Color(0xffFFFCF1).withOpacity(0.6),
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
                    Text('Lagos, Nigeria',
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
                  'What’s the most challenging part of applying to top tech programs?',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 11,
                ),
                StatefulBuilder(
                  builder: (BuildContext context,
                      void Function(void Function()) setState) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        buildRow(
                          0,
                          'Writing essays',
                          '30%',
                          AppColors.primaryYellow.withOpacity(0.80),
                          0.3,
                        ),
                        buildRow(1, 'Preparing for exams', '60%',
                            AppColors.yellowGreen.withOpacity(0.8), 0.8),
                        buildRow(2, 'Getting recommendations', '10%',
                            AppColors.primaryOrange.withOpacity(0.8), 0.9),
                      ],
                    );
                  },
                ),
                const SizedBox(
                  height: 12,
                ),
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomContainer(
                        containerColor: AppColors.primaryPink,
                        title: 'TechJourney'),
                    SizedBox(
                      width: 4,
                    ),
                    CustomContainer(
                        containerColor: AppColors.primaryYellow,
                        title: 'Admissions'),
                    SizedBox(
                      width: 4,
                    ),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.favorite_border_rounded,
                          color: AppColors.grey28,
                        ),
                        SizedBox(
                          height: 1.8,
                        ),
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
                )
              ],
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          const Text(
            'This journal inspired 20 users',
            style: TextStyle(
              color: Colors.black,
              fontSize: 13,
              fontWeight: FontWeight.w600,
              letterSpacing: -0.32,
            ),
          ),
          const SizedBox(
            height: 9,
          ),
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
          const SizedBox(
            height: 9,
          ),
        ],
      ),
    );
  }

  Widget buildRow(int index, String task, String percentage,
      Color progressColor, double progress) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  isActiveList[index] = !isActiveList[index];
                });
              },
              child: Container(
                height: 17,
                width: 17,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isActiveList[index]
                      ? AppColors.primaryYellow // Active color
                      : Colors.transparent, // Inactive color
                  border: Border.all(
                    color: isActiveList[index]
                        ? Colors.transparent
                        : Colors.grey, // Inactive border color
                  ),
                ),
                child: isActiveList[index]
                    ? const Icon(Icons.done,
                        color: Colors.white, size: 12) // Active icon
                    : Container(), // No icon when inactive
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                task,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Text(
              percentage,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 10,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        const SizedBox(height: 11),
        LinearPercentIndicator(
          width: MediaQuery.of(context).size.width - 50,
          animation: true,
          lineHeight: 7.0,
          animationDuration: 2500,
          percent: progress,
          barRadius: const Radius.circular(8),
          backgroundColor: const Color(0xffFBFBFB),
          linearStrokeCap: LinearStrokeCap.roundAll,
          progressColor: progressColor,
        ),
        const SizedBox(height: 14.6),
      ],
    );
  }
}

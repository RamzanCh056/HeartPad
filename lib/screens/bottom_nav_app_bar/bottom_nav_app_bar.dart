import 'package:flutter/material.dart';
import 'package:heart_pad/screens/bottom_nav_app_bar/screens_navigate_from_bottomBar/home_screen/home_screen.dart';
import 'package:heart_pad/themes/app_colors.dart';
import 'package:svg_flutter/svg_flutter.dart';

import '../../themes/app_text_styles.dart';

class BottomNavAppBar extends StatefulWidget {
  const BottomNavAppBar({super.key});

  @override
  State<BottomNavAppBar> createState() => _BottomNavAppBarState();
}

class _BottomNavAppBarState extends State<BottomNavAppBar> {
  final List<Widget> _bottomNavItem = [
    HomeScreen(),
    Container(),
    Container(),
    Container(),
    Container(),
  ];
  int _currentIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return

      Scaffold(
        key: _scaffoldKey,
        resizeToAvoidBottomInset: false,
        backgroundColor: const Color(0xffFFFFFF),
        body: _bottomNavItem[_currentIndex],
        bottomNavigationBar: BottomAppBar(
          surfaceTintColor: Colors.white,
          color:const Color(0xffFFFFFF),
          padding: EdgeInsets.zero,
          child: Container(
            height: 68,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical:5),
         color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                BottomTab(
                  onTap: () {
                    onTabTapped(0);
                  },
                  activeColor: _currentIndex == 0
                      ? AppColors.primaryBlue
                      : AppColors.secondaryGrey,
                  title: "Home",
                  icon: _currentIndex==0?SvgPicture.asset(
                      height: 24,width: 24,
                      fit: BoxFit.cover,
                      "assets/icons/home_screen/home_Active.svg"):SvgPicture.asset(
                      height: 24,width: 24,
                      fit: BoxFit.cover,
                      "assets/icons/home_screen/home_inac.svg"),
                ),
                BottomTab(
                  onTap: () {
                    onTabTapped(1);
                  },
                  activeColor: _currentIndex == 1
                      ? AppColors.primaryBlue
                      : AppColors.secondaryGrey,
                  title: "Discover",
                  icon: _currentIndex==1?SvgPicture.asset(
                      height: 24,width: 24,
                      fit: BoxFit.cover,
                      "assets/icons/home_screen/search_active.svg"):SvgPicture.asset(
                      height: 24,width: 24,
                      fit: BoxFit.cover,
                      "assets/icons/home_screen/search_inac.svg"),
                ),

                BottomTab(
                  onTap: () {
                    onTabTapped(2);
                  },
                  activeColor: _currentIndex == 2
                      ? AppColors.primaryBlue
                      : AppColors.secondaryGrey,
                  title: "Add",
                  icon: _currentIndex==2?SvgPicture.asset(
                      height: 24,width: 24,
                      fit: BoxFit.cover,
                      "assets/icons/home_screen/add_active.svg"):SvgPicture.asset(
                      height: 24,width: 24,
                      fit: BoxFit.cover,
                      "assets/icons/home_screen/add_inac.svg"),
                ),
                BottomTab(
                  onTap: () {
                    onTabTapped(3);
                  },
                  activeColor: _currentIndex == 3
                      ? AppColors.primaryBlue
                      : AppColors.secondaryGrey,
                  title: "Personal",
                  icon: _currentIndex==3?SvgPicture.asset(
                      height: 24,width: 24,
                      fit: BoxFit.cover,
                      "assets/icons/home_screen/document_act.svg"):SvgPicture.asset(
                      height: 24,width: 24,
                      fit: BoxFit.cover,
                      "assets/icons/home_screen/note_inac.svg"),
                ),
                BottomTab(
                  onTap: () {
                    onTabTapped(4);
                  },
                  activeColor: _currentIndex == 4
                      ? AppColors.primaryBlue
                      : AppColors.secondaryGrey,
                  title: "Profile",
                  icon: _currentIndex==4?SvgPicture.asset(
                      height: 24,width: 24,
                      fit: BoxFit.cover,
                      "assets/icons/home_screen/profile_active.svg"):SvgPicture.asset(
                      height: 24,width: 24,
                      fit: BoxFit.cover,
                      "assets/icons/home_screen/profile_inac.svg"),
                ),
              ],
            ),
          ),
        ),
      );
  }
}

class BottomTab extends StatelessWidget {
  final String title;
  final Color activeColor;
  final Widget icon;
  final VoidCallback onTap;

  const BottomTab({
    super.key,
    required this.title,
    required this.activeColor,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 5,
          ),
          icon,
          const SizedBox(
            height: 5,
          ),
          Text(
              title,
              style:AppTextStyles.montserrat.copyWith( color: activeColor,
                fontSize: 10,
                fontWeight: FontWeight.w500,)
          )
        ],
      ),
    );
  }
}
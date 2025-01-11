import 'package:flutter/material.dart';
import 'package:heart_pad/screens/auth_screen/sign_up_screen.dart';
import 'package:heart_pad/themes/app_colors.dart';
import 'package:heart_pad/themes/app_text_styles.dart';
import 'package:heart_pad/widget/custom_button.dart';
import 'package:heart_pad/widget/navigation.dart';
class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<Map<String, String>> _pages = [
    {
      'imagePath': 'assets/images/onboaring_screen/Rectangle 1.png',
      'title': 'Welcome to HeartPad',
      'subTitle':
      'Share your thoughts freely and anonymously, connecting authentically with others. Your story matters, and it’s always safe here.',
    },
    {
      'imagePath': 'assets/images/onboaring_screen/2149369702.png',
      'title': 'Your Secrets, Your Sanctuary',
      'subTitle':
      'HeartPad is your private journal for anonymous self-expression. Share, reflect, and connect in a supportive, confidential environment.',
    },
    {
      'imagePath': 'assets/images/onboaring_screen/2150167437.png',
      'title': 'Amplifying Voices',
      'subTitle':
      'At HeartPad, every shared story fosters healing, connection, and unity. Discover the transformative power of anonymity to inspire and be inspired.',
    },
  ];

  void _goToNextPage() {
    if (_currentPage < _pages.length - 1) {
      _pageController.animateToPage(
        _currentPage + 1,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      // Last page — navigate to SignUpScreen
      NavigateToScreen.navigateTo(context, const SignUpScreen());
    }
  }

  void _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Use SafeArea if you want to avoid the notch or dynamic island overlap
      body: Stack(
        children: [
          // Main PageView
          PageView.builder(
            controller: _pageController,
            onPageChanged: _onPageChanged,
            itemCount: _pages.length,
            itemBuilder: (context, index) {
              final item = _pages[index];
              return _buildPage(
                imagePath: item['imagePath'] ?? '',
              );
            },
          ),

          // The bottom "rounded" container
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: _buildBottomContainer(context),
          ),
        ],
      ),
      backgroundColor: AppColors.primaryWhite,
    );
  }

  Widget _buildPage({required String imagePath}) {
    return Column(
      children: [
        // Top image area
        Expanded(
          child: Image.asset(
            imagePath,
            width: double.infinity,
            fit: BoxFit.cover, // fills width, may crop top/bottom a bit
          ),
        ),
        // The rest (title, subtitle, button, dots) is in the bottom container
      ],
    );
  }

  Widget _buildBottomContainer(BuildContext context) {
    final pageData = _pages[_currentPage];
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      decoration: const BoxDecoration(
        color: Colors.white,
        // Rounded top corners only
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Title
          Text(
            pageData['title']!,
            style: AppTextStyles.boldStyle.copyWith(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 18),

          // Subtitle
          Text(
            pageData['subTitle']!,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 14),
          ),
          const SizedBox(height: 18),

          // Continue Button
          CustomButton(
            title: 'Continue',
            onTap: _goToNextPage,
          ),
          const SizedBox(height: 24),

          // Dots Indicator
          _buildPageIndicator(),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  Widget _buildPageIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(_pages.length, (index) {
        final isActive = _currentPage == index;
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: const EdgeInsets.symmetric(horizontal: 4),
          height: 8,
          width: 8,
          decoration: BoxDecoration(
            gradient: isActive
                ? const LinearGradient(
              colors: [
                Color(0xFF5AD3EB),
                Color(0xFFA9EB8B),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            )
                : const LinearGradient(
              colors: [
                AppColors.grey,
                AppColors.grey,
              ],
            ),
            borderRadius: BorderRadius.circular(4),
          ),
        );
      }),
    );
  }
}

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _currentPage = 0;

  final List<Map<String, String>> _pages = [
    {
      'imagePath': 'assets/images/onboaring_screen/Rectangle 1.png',
      'title': 'Welcome to HeartPad',
      'subTitle': 'Share your thoughts freely and anonymously, connecting authentically with others. Your story matters, and it’s always safe here.',
    },
    {
      'imagePath': 'assets/images/onboaring_screen/2149369702.png',
      'title': 'Your Secrets, Your Sanctuary',
      'subTitle': 'HeartPad is your private journal for anonymous self-expression. Share, reflect, and connect in a supportive, confidential environment.',
    },
    {
      'imagePath': 'assets/images/onboaring_screen/2150167437.png',
      'title': 'Amplifying Voices',
      'subTitle': 'At HeartPad, every shared story fosters healing, connection, and unity. Discover the transformative power of anonymity to inspire and be inspired.',
    },
  ];

  void _changePage(int newIndex) {
    if (newIndex >= 0 && newIndex < _pages.length) {
      setState(() {
        _currentPage = newIndex;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentPageData = _pages[_currentPage];

    return Scaffold(
      backgroundColor: AppColors.primaryWhite,
      body: GestureDetector(
        onHorizontalDragEnd: (details) {
          // Detect swipe direction
          if (details.primaryVelocity != null) {
            if (details.primaryVelocity! < 0) {
              // Swiped left
              _changePage(_currentPage + 1);
            } else if (details.primaryVelocity! > 0) {
              // Swiped right
              _changePage(_currentPage - 1);
            }
          }
        },
        child: Column(
          children: [
            // Dynamic content for image and text
            Expanded(
              child: Stack(
                children: [
                  // Background image
                  Positioned.fill(
                    child: Image.asset(
                      currentPageData['imagePath']!,
                      fit: BoxFit.cover,
                    ),
                  ),
                  // Foreground container with text and button
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            currentPageData['title']!,
                            style: AppTextStyles.boldStyle.copyWith(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(height: 18),
                          Text(
                            currentPageData['subTitle']!,
                            textAlign: TextAlign.center,

                            // style: AppTextStyles.boldStyle.copyWith(
                            // //  color: Colors.black,
                            //   fontSize: 13,
                            //   fontWeight: FontWeight.w400,
                            // ),
                          ),
                          const SizedBox(height: 18),
                          Padding(
                            padding: const EdgeInsets.only(left: 15,right: 15),
                            child: CustomButton(
                              title: 'Continue',
                              onTap: () {
                                if (_currentPage < _pages.length - 1) {
                                  _changePage(_currentPage + 1);
                                } else {
                                  NavigateToScreen.navigateTo(context, const SignUpScreen());
                                }
                              },
                            ),
                          ),
                          const SizedBox(height: 25),
                          _buildPageIndicator(),
                          const SizedBox(height: 10,),
                        ],


                      ),
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

  Widget _buildPageIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(_pages.length, (index) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 5),
          height: 7,
          width: 7,
          decoration: BoxDecoration(
            gradient: _currentPage == index
                ? const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFF5AD3EB), Color(0xFFA9EB8B)],
            )
                : const LinearGradient(
              colors: [AppColors.grey, AppColors.grey],
            ),
            borderRadius: BorderRadius.circular(5),
          ),
        );
      }),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_app/app/widgets/my_sized_box.dart';
import 'package:learning_app/core/utils/constants.dart';
import 'package:learning_app/core/utils/images.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/utils/colors.dart';
import '../../../../generated/l10n.dart';
import '../../../domain/app_language_cubit/app_language_cubit.dart';
import '../../../domain/app_theme_cubit/apptheme_cubit.dart';
import '../../../domain/app_theme_cubit/theme_state.dart';
import 'choose_language.dart';
import 'onboarding_item.dart';

class OnboardingBody extends StatefulWidget {
  const OnboardingBody({super.key});

  @override
  State<OnboardingBody> createState() => _OnboardingBodyState();
}

class _OnboardingBodyState extends State<OnboardingBody> {
  late final PageController _pageController;
  int _currentPage = 0;
  bool isDarkTheme = false;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onPageChanged(int page) {
    setState(() {
      _currentPage = page;
    });
  }

  List<Widget> _buildOnBoardingPages(BuildContext context) {
    return [
      onboardingItem(
        context,
        0,
        S.of(context).onBoarding1_title,
        S.of(context).onBoarding1_desc,
        onBoarding1Image,
      ),
      onboardingItem(
        context,
        1,
        S.of(context).onBoarding2_title,
        S.of(context).onBoarding2_desc,
        onBoarding2Image,
      ),
      onboardingItem(
        context,
        2,
        S.of(context).onBoarding3_title,
        S.of(context).onBoarding3_desc,
        onBoarding3Image,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final onBoardingPages = _buildOnBoardingPages(context);

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BlocBuilder<AppthemeCubit, AppThemeState>(
                builder: (context, state) {
                  return IconButton(
                    icon: Icon(
                      Icons.brightness_medium,
                      color: primaryColor,
                    ),
                    iconSize: 30,
                    onPressed: () {
                      if (isDarkTheme) {
                        sharedPreferences?.setBool('isDarkTheme', false);
                        BlocProvider.of<AppthemeCubit>(context)
                            .changeTheme(ThemeState.light);
                      } else {
                        sharedPreferences?.setBool('isDarkTheme', true);
                        BlocProvider.of<AppthemeCubit>(context)
                            .changeTheme(ThemeState.dark);
                      }
                      setState(() {
                        isDarkTheme = !isDarkTheme;
                      });
                    },
                  );
                },
              ),
              BlocBuilder<AppLanguageCubit, AppLanguageState>(
                builder: (context, state) {
                  return IconButton(
                    icon: Icon(Icons.language, color: primaryColor),
                    iconSize: 30,
                    onPressed: () {
                      chooselanguage(context);
                    },
                  );
                },
              ),
            ],
          ),
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: onBoardingPages.length,
              onPageChanged: _onPageChanged,
              itemBuilder: (context, index) {
                return onBoardingPages[index];
              },
            ),
          ),
          SmoothPageIndicator(
            controller: _pageController,
            count: onBoardingPages.length,
            effect: const WormEffect(
              dotHeight: 12,
              dotWidth: 12,
              type: WormType.thinUnderground,
            ),
          ),
          mySizedBox(height: 20),
          if (_currentPage != onBoardingPages.length - 1)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () =>
                      _pageController.jumpToPage(onBoardingPages.length - 1),
                  child: Text(
                    S.of(context).onBoarding_skip,
                    style: const TextStyle(
                      color: primaryColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => _pageController.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.fastLinearToSlowEaseIn,
                  ),
                  child: Container(
                    width: 60,
                    height: 60,
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Icon(
                      Icons.arrow_forward,
                      color: Theme.of(context).scaffoldBackgroundColor,
                      size: 30,
                    ),
                  ),
                ),
              ],
            )
          else
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed("/login");
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: primaryColor,
                minimumSize: const Size(double.infinity, 60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text(
                S.of(context).login,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
              ),
            ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../signin/signin_screen.dart';
import 'component/onboarding_screen_one.dart';
import 'component/onboarding_screen_three.dart';
import 'component/onboarding_screen_two.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  var _controller = PageController();
  int? _currentPage = 0;
  var listPage = const [
    OnboardingScreenOne(),
    OnboardingScreenTwo(),
    OnboardingScreenThree(),
  ];

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: const Color(0xFFEEEEEE),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 180,
            height: 140,
            alignment: Alignment.topLeft,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.contain,
                image: AssetImage(
                  'assets/images/bubble1.png',
                ),
              ),
            ),
          ),
          Expanded(
            child: PageView(
              controller: _controller,
              onPageChanged: (int index) {
                setState(() {
                  _currentPage = index;
                });
              },
              children: listPage,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20, bottom: 50),
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  onDotClicked: (index) => _controller.animateToPage(
                    index,
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.easeIn,
                  ),
                  effect: const SwapEffect(
                    activeDotColor: Color(0xFF50C2C9),
                    dotColor: Colors.grey,
                    dotHeight: 14,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _controller.nextPage(
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.easeIn,
                    );
                    if (_currentPage == 2) {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SigninScreen(),
                        ),
                        (Route<dynamic> route) => false,
                      );
                    }
                  },
                  child: Container(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    alignment: Alignment.centerRight,
                    decoration: const BoxDecoration(
                      color: Color(0xFF50C2C9),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        topLeft: Radius.circular(25),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        _currentPage == 2 ? 'Ayo Mulai' : 'Selanjutnya',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

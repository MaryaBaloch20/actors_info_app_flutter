import 'package:actors_profiles/intro_screens/intro_screen_01.dart';
import 'package:actors_profiles/intro_screens/intro_screen_02.dart';
import 'package:actors_profiles/intro_screens/intro_screen_03.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  //controller to keep track of what page we're on
  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //page view
          PageView(
            controller: _controller,
            children: const [
              IntroScreen1(),
              IntroScreen2(),
              IntroScreen3(),
            ],
          ),

          //dot indicator | wraped in container for alignment
          Container(
              alignment: const Alignment(0, 0.75),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //Skip Button
                  GestureDetector(
                      onTap: () {
                        _controller.jumpToPage(2);
                      },
                      child: const Text("Skip")),

                  //Dot Indicator
                  SmoothPageIndicator(controller: _controller, count: 3),

                  //Next or Done button
                  GestureDetector(
                      onTap: () {
                        _controller.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn);
                      },
                      child: const Text("Next")),
                ],
              ))
        ],
      ),
    );
  }
}

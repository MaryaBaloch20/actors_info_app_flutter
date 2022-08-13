import 'package:actors_profiles/intro_screens/intro_screen_01.dart';
import 'package:actors_profiles/intro_screens/intro_screen_02.dart';
import 'package:actors_profiles/intro_screens/intro_screen_03.dart';
import 'package:actors_profiles/intro_screens/logo_screen.dart';
import 'package:actors_profiles/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  //controller to keep track of what page we're on
  final PageController _controller = PageController();

  //keep track if we are on last page  or not
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //page view
          PageView(
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 3);
              });
            },
            controller: _controller,
            children: const [
              LogoScreen(),
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
                        _controller.jumpToPage(3);
                      },
                      child: const Text("Skip")),

                  //Dot Indicator
                  SmoothPageIndicator(controller: _controller, count: 4),

                  //Next or Done button
                  onLastPage
                      ? GestureDetector(
                          onTap: () {
                            // Navigator.push(context,
                            //     MaterialPageRoute(builder: (context) {
                            //   return HomeScreen();
                            // }));
                          },
                          child: const Text("Done"))
                      : GestureDetector(
                          onTap: () {
                            _controller.nextPage(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeIn);
                          },
                          child: const Text(
                            "Next",
                          )),
                ],
              ))
        ],
      ),
    );
  }
}

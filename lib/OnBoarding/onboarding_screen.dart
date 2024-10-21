
import 'dart:async';

import 'package:bucketlist/Dashboard/dashboard.dart';
import 'package:bucketlist/OnBoarding/pages/intro_page_1.dart';
import 'package:bucketlist/OnBoarding/pages/intro_page_2.dart';
import 'package:bucketlist/OnBoarding/pages/intro_page_3.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  bool onLastPage = false;

  int _currentPage = 0;

  PageController _controller = PageController(
    initialPage: 0,
  );


  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage;
        timer.cancel();


      }
      _controller.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 350),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                //onLastPage making it true when
                onLastPage = (index == 2);
              });
            },
            children: [
              Padding(
                padding: const EdgeInsets.all(0),
                child: Container(
                  child: IntroPage1(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(0),
                child: Container(
                  child: IntroPage2(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(0),
                child: Container(
                  child: IntroPage3(),
                ),
              ),
            ],
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: onLastPage?null:EdgeInsets.symmetric( vertical: 35),
                  child: SmoothPageIndicator(
                    effect: const ExpandingDotsEffect(
                      dotHeight: 8,
                      activeDotColor: Colors.grey,
                      dotWidth: 8,
                    ),
                    controller: _controller,
                    count: 3,
                  ),
                ),
                SizedBox(height: 20), // Add spacing between page indicator and button
                Visibility(
                  visible: onLastPage,
                  child: Container(
                    width: double.infinity, // Button takes full width
                    padding: EdgeInsets.symmetric(horizontal: 90, vertical: 25),
                    child: GestureDetector(
                      onTap: () {
                       Get.to(DashBoard());
                      },
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Get Started',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ), // Add space between text and icon
                            Icon(
                              Icons.arrow_right_alt_sharp,
                              color: Colors.white,
                            ),
                          ],
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
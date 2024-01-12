// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:namma_metro/components/My_Button.dart';
import 'package:namma_metro/components/on_boarding_page_view.dart';
import 'package:namma_metro/components/pageindicator.dart';

String buttonText = "Next";
bool isfourthSlide = false;

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final PageController controller = PageController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    controller.animateToPage(3,
                        duration: Duration(milliseconds: 200),
                        curve: Curves.bounceInOut);
                  },
                  child: Text(
                    "Skip",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.secondary),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Expanded(
              child: PageView(
                physics: BouncingScrollPhysics(),
                onPageChanged: (index) {
                  setState(() {
                    currentPage = index;
                  });
                },
                controller: controller,
                children: [
                  OnBoardingPageView(
                      path: "lib/assets/first.png",
                      headingText: "Nearest Metro Stations",
                      firstText: "Find the nearest metro stations by",
                      secondText: "your desired destination"),
                  OnBoardingPageView(
                      path: "lib/assets/second.png",
                      headingText: "Online Ticket Booking",
                      firstText: "Get QR code and scan this at metro",
                      secondText: "entry and exit point"),
                  OnBoardingPageView(
                      path: "lib/assets/third.png",
                      headingText: "Get Right information ",
                      firstText: "Get all upcoming train timings at your",
                      secondText: "preferred station at ease"),
                  OnBoardingPageView(
                      path: "lib/assets/fourth.png",
                      headingText: "Easier, Simpler ,Faster ",
                      firstText: "Top up your metro card from your",
                      secondText: "mobile safely and securely"),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            MyPageindicator(
              controller: controller,
            ),
            SizedBox(
              height: 20,
            ),
            MyButton(currentPage: currentPage, pageController: controller),
          ],
        ),
      )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:leat_eat/constants/colors.dart';
import 'package:leat_eat/constants/constants.dart';

class WalkthoushScreen extends StatelessWidget {
  const WalkthoushScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: IntroductionScreen(
          pages: [
            PageViewModel(
              image: Image.asset('assets/onboard/onboard_one_let_eat.png'),
              title: "DISCOVER PLACES NEAR YOU",
              body:
                  "We make it simple to find the food you crave. Enter your address and let us do rest.",
              decoration: const PageDecoration(
                imagePadding: EdgeInsets.all(100.0),
                contentMargin: EdgeInsets.zero,
                titlePadding: EdgeInsets.all(20.0),
                descriptionPadding: EdgeInsets.all(20.0),
                bodyAlignment: Alignment.center,
                imageAlignment: Alignment.bottomCenter,
                pageColor: Colors.white,
                titleTextStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 30.0),
                bodyTextStyle: TextStyle(fontSize: 20.0),
              ),
            ),
            PageViewModel(
              image: Image.asset('assets/onboard/onboard_two_let_eat.png'),
              title: "CHOOSE A TASTY DISH",
              body:
                  "When you order eat street we’ll hook you up with exclusive coupons, special discount and rewards.",
              decoration: const PageDecoration(
                imagePadding: EdgeInsets.all(100.0),
                contentMargin: EdgeInsets.zero,
                titlePadding: EdgeInsets.all(20.0),
                descriptionPadding: EdgeInsets.all(20.0),
                bodyAlignment: Alignment.center,
                imageAlignment: Alignment.bottomCenter,
                pageColor: Colors.white,
                titleTextStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 30.0),
                bodyTextStyle: TextStyle(fontSize: 20.0),
              ),
            ),
            PageViewModel(
              image: Image.asset('assets/onboard/onboard_three_let_eat.png'),
              title: "PICKUP OR DELIVERY",
              body:
                  "We make food ordering fast, simple and free- no matter if you order online or cash.",
              decoration: const PageDecoration(
                imagePadding: EdgeInsets.all(100.0),
                contentMargin: EdgeInsets.zero,
                titlePadding: EdgeInsets.all(20.0),
                descriptionPadding: EdgeInsets.all(20.0),
                bodyAlignment: Alignment.center,
                imageAlignment: Alignment.bottomCenter,
                pageColor: Colors.white,
                titleTextStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 30.0),
                bodyTextStyle: TextStyle(fontSize: 20.0),
              ),
            )
          ],
          controlsMargin: EdgeInsets.only(bottom: 50.0),
          dotsDecorator: DotsDecorator(
              color: Colors.grey,
              activeColor: red,
              size: const Size.square(9.0),
              activeSize: const Size(25.0, 9.0),
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
              spacing: EdgeInsets.all(2.0)),
          done: const Text("Done",
              style: TextStyle(
                color: Colors.red,
                fontSize: 15.0,
              )),
          onDone: () {
            Navigator.of(context).pushNamed(login);
          },
          showNextButton: true,
          showSkipButton: false,
          next: Text("Next", style: TextStyle(color: red, fontSize: 15.0)),
          isBottomSafeArea: true,
          isTopSafeArea: true,
          dotsFlex: 1,
          globalBackgroundColor: Colors.white),
    );
  }
}

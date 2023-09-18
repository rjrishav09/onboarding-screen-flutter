import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'Homepage.dart';
import 'buildimages.dart';
import 'main.dart';

class PageOnBorarding extends StatelessWidget {
  const PageOnBorarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            title: 'Aristotle',
            body:
            'The law is reason, free from passion.',
            image: const BuildImages(image: 'assets/images/image1.jpg'),
            decoration: getPageDecoration(),
          ),
          PageViewModel(
            title: 'John Locke',
            body:
            'Where there is no law, there is no freedom.',
            image: const BuildImages(image: 'assets/images/image2.jpg'),
            decoration: getPageDecoration(),
          ),
          PageViewModel(
            title: 'Cicero',
            body:
            'The good of the people is the greatest law.',
            image: const BuildImages(image: 'assets/images/image3.jpg'),
          )

        ],
        next: const Icon(Icons.arrow_forward),
        done: const Text('Done', style: TextStyle(fontWeight: FontWeight.bold)),
        onDone: () => goToHome(context),
        showSkipButton: true,
        skip: const Text('Skip'),
        // onSkip: () => print('skip'),
        // showBackButton: true,
        // back: const Icon(Icons.arrow_back),
        dotsDecorator: getDotDecoration(),
        nextFlex: 0,
        skipOrBackFlex: 0,
        animationDuration: 500,
        isProgressTap: true,
        isProgress: true,
        // freeze: false,
        onChange: (index) => print(index),
      ),
    );
  }

  PageDecoration getPageDecoration() {
    return const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
      bodyTextStyle: TextStyle(fontSize: 20),
      imagePadding: EdgeInsets.all(24),
      titlePadding: EdgeInsets.zero,
      bodyPadding: EdgeInsets.all(20),
      pageColor: Colors.white,
    );
  }

  DotsDecorator getDotDecoration() {
    return DotsDecorator(
        color: const Color(0xFFBDBDBD),
        size: const Size(10, 10),
        activeSize: const Size(22, 10),
        activeColor: Colors.orange,
        activeShape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)));
  }

  void goToHome(context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => HomePage()),
    );
  }
}

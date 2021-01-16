import 'package:flutter/material.dart';
import 'package:abit_pay/modal/Onboardingdemo.dart';
import 'package:abit_pay/modal/Onboarding_Model.dart';
import 'package:abit_pay/Constants/Constants.dart';

class OnboardingDemo extends StatefulWidget {
  @override
  _OnboardingDemoState createState() => _OnboardingDemoState();
}

class _OnboardingDemoState extends State<OnboardingDemo> {
  final GlobalKey<ScaffoldState> _globalKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      body: OnboardingScreen(
        bgColor: kPrimaryColor,
        themeColor: Colors.white,
        pages: pages,
        skipClicked: (value) {
          print(value);
          _globalKey.currentState.showSnackBar(SnackBar(
            content: Text("Skip clicked"),
          ));
        },
        getStartedClicked: (value) {
          print(value);
          _globalKey.currentState.showSnackBar(SnackBar(
            content: Text("Get Started clicked"),
          ));
        },
      ),
    );
  }

  final pages = [
    OnboardingModel(
        title: 'Send, receive and swap Crypocurrencies with ease',
        description:
        'You can send, receive and swap cryptocurrencies such as Tatcoin, Ethereum, Bitcoin and more',
        titleColor: Colors.black,
        descripColor: const Color(0xFF929794),
        imagePath: 'images/onboarding1.png'),
    OnboardingModel(
        title: 'Pay bills',
        description:
        'Pay your subscription bills any time any day, without any hassle',
        titleColor: Colors.black,
        descripColor: const Color(0xFF929794),
        imagePath: 'images/onboarding2.png'),
    OnboardingModel(
        title: 'ABiT Pay Card',
        description: 'Get an ABiT Pay Credit Card to use for your online and offline shopping experience',
        titleColor: Colors.black,
        descripColor: const Color(0xFF929794),
        imagePath: 'images/onboarding3.png'),
  ];
}



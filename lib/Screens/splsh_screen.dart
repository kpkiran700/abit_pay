import 'package:abit_pay/Screens/Onboarding._demodart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Splsh_Screen extends StatefulWidget {

  @override
  _Splsh_ScreenState createState() => _Splsh_ScreenState();
}

class _Splsh_ScreenState extends State<Splsh_Screen> {
  void initState() {
    super.initState();
    new Future.delayed(
        const Duration(seconds: 3),
            () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => OnboardingDemo()),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Image.asset('images/abit_pay1.png',width: 200,height: 200,),
      ),
    );
  }
}

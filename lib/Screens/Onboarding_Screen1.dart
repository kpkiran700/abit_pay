
import 'package:flutter/material.dart';
import 'package:abit_pay/Constants/Constants.dart';
import 'package:flutter_page_view_indicator/flutter_page_view_indicator.dart';

class Onboarding_Screen extends StatefulWidget {
  @override
  _Onboarding_ScreenState createState() => _Onboarding_ScreenState();
}

class _Onboarding_ScreenState extends State<Onboarding_Screen> {
  final controller = PageController(
    initialPage: 0,
  );
  int pageChanged;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: PageView(
        controller: controller,
        pageSnapping: true,
        onPageChanged: (index){
          setState(() {
            pageChanged = index;
          });
          print(pageChanged);
        },
        children: [

          Container(
            height: size.height,
            width: size.width,
            color: kPrimaryColor,
            child: Stack(
              children: [
                Align(
                  child: Image.asset(
                    'images/Ellipse 3.png',
                  ),
                  alignment: Alignment(-1, 1),
                  heightFactor: 1.1,
                ),
                Align(
                  child: Image.asset(
                    'images/Ellipse 6.png',
                  ),
                  alignment: Alignment(-1, 0),
                  heightFactor: 3,
                ),
                Align(
                  child: Image.asset(
                    'images/Ellipse 5.png',
                  ),
                  alignment: Alignment(1, 0),
                  heightFactor: 2.9,
                ),

                Positioned(
                  bottom: 15.0,
                  left:0,
                  right: 0,
                  top: 0,
                  child:Container(
                    width: size.width,
                    padding: EdgeInsets.all(AppPading),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('images/onboarding1.png'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
              height: size.height,
              width: size.width,
              color: kPrimaryColor,
              child: Column(
                children: [
                  Stack(
                    children: [
                      Align(
                        child: Image.asset(
                          'images/Ellipse 3.png',
                        ),
                        alignment: Alignment(-1, 1),
                        heightFactor: 1.1,
                      ),
                      Align(
                        child: Image.asset(
                          'images/Ellipse 5.2.png',
                        ),
                        alignment: Alignment(-1,1 ),
                        heightFactor: 2.5,

                      ),
                      Align(
                        child: Image.asset(
                          'images/Ellipse 7.png',
                        ),
                        alignment: Alignment(1, -0.9),
                        heightFactor: 2.9,
                      ),
                      Positioned(
                        top:10,
                        child:Container(
                          width: size.width,
                          height: size.height,
                          padding: EdgeInsets.all(AppPading),
                          child: Column(
                            children: [
                              Image.asset('images/onboarding2.png'),
                              Text('Send, receive and swap Crypocurrencies with ease',style: TextStyle(color: Colors.white,fontSize: 20,),),
                              Text('You can send, receive and swap cryptocurrencies suchou can send, receive and swap cryptocurrencies suchou can send, receive and swap cryptocurrencies such as Tatcoin, Ethereum, Bitcoin and more',style: ktitlestyle,),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )),
          Container(
              height: size.height,
              width: size.width,
              color: kPrimaryColor,
              child: Column(
                children: [
                  Stack(
                    children: [
                      Align(
                        child: Image.asset(
                          'images/Ellipse 3.png',
                        ),
                        alignment: Alignment(-1, 1),
                        heightFactor: 1.1,
                      ),
                      Align(
                        child: Image.asset(
                          'images/Ellipse 6.png',
                        ),
                        alignment: Alignment(-1, 0),
                        heightFactor: 3,
                      ),
                      Align(
                        child: Image.asset(
                          'images/Ellipse 5.png',
                        ),
                        alignment: Alignment(1, 0),
                        heightFactor: 2.9,
                      ),
                      Positioned(
                        bottom: 15.0,
                        left:0,
                        right: 0,
                        top: 0,
                        child:Container(
                          width: size.width,
                          padding: EdgeInsets.all(AppPading),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset('images/onboarding3.png'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )),

        ],
      ),
    );
  }
}

// PageViewIndicator(
// length: 3,
// currentIndex: pageChanged,
// currentItemColor: Colors.white,
// otherItemColor: Colors.grey.shade800,
// indicatorMargin: EdgeInsets.all(5),
// borderRadius: BorderRadius.circular(9999),
// alignment: MainAxisAlignment.center,
// animationDuration: Duration(milliseconds: 750),
// currentItemHeight: 6.5,
// currentItemWidth: 19,
// otherItemHeight: 6,
// otherItemWidth: 7,
// ),
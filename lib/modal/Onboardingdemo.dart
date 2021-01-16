import 'dart:async';


import 'package:abit_pay/Constants/Constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:abit_pay/modal/Onboarding_Model.dart';
import 'package:abit_pay/Screens/Login_Screen1.dart';

class OnboardingScreen extends StatefulWidget {
  final List<OnboardingModel> pages;
  final Color bgColor;
  final Color themeColor;
  final ValueChanged<String> skipClicked;
  final ValueChanged<String> getStartedClicked;

  OnboardingScreen({
    Key key,
    @required this.pages,
    @required this.bgColor,
    @required this.themeColor,
    @required this.skipClicked,
    @required this.getStartedClicked,
  }) : super(key: key);

  @override
  OnboardingScreenState createState() => OnboardingScreenState();
}

class OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < widget.pages.length; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  List<Widget> buildOnboardingPages() {
    final children = <Widget>[];

    for (int i = 0; i < widget.pages.length; i++) {
      children.add(_showPageData(widget.pages[i]));
    }
    return children;
  }

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (_currentPage < widget.pages.length -1) {
        _currentPage++ ;
      } else{
        _currentPage =  widget.pages.length -1;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 350),
        curve: Curves.easeIn,
      );
    });
  }


  // @override
  // void dispose() {
  //   super.dispose();
  //   _pageController.page.;
  // }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 6.0,
      width: isActive ? 19.0 : 6.0,
      decoration: BoxDecoration(
        color: isActive ? widget.themeColor : Color(0xFF929794),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.bgColor,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    height: 540.0,
                    color: Colors.transparent,
                    child: PageView(
                        pageSnapping: true,
                        physics: ClampingScrollPhysics(),
                        controller: _pageController,
                        onPageChanged: (int page) {
                          setState(() {
                            _currentPage = page;
                          });
                        },
                        children: buildOnboardingPages()),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: _buildPageIndicator(),
                  ),
                  SizedBox(height: 15.0),
                  _currentPage != widget.pages.length - 1
                      ? Expanded(
                          child: Container(
                            child: FlatButton(
                              onPressed: () {
                                widget.skipClicked("Skip Tapped");
                                _pageController
                                    .jumpToPage(widget.pages.length - 1);
                              },
                              child: Text(
                                'Skip',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white.withOpacity(0.7),
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                        )
                      : _showGetStartedButton(),
                  _currentPage != widget.pages.length - 1
                      ? Expanded(
                          child: Align(
                            alignment: FractionalOffset.bottomRight,
                            child: Padding(
                              padding: EdgeInsets.only(right: 20, bottom: 10),
                              child: FloatingActionButton(
                                backgroundColor: widget.bgColor,
                                child: Icon(
                                  Icons.arrow_forward,
                                  color: widget.themeColor,
                                ),
                                onPressed: () {
                                  _pageController.nextPage(
                                    duration: Duration(milliseconds: 500),
                                    curve: Curves.ease,
                                  );
                                },
                              ),
                            ),
                          ),
                        )
                      : Text(''),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _showPageData(OnboardingModel page) {
    return Padding(
      padding: EdgeInsets.all(40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Image(
              image: AssetImage(page.imagePath),
              height: 300.0,
              width: 300.0,
            ),
          ),
          SizedBox(height: 30.0),
          Expanded(
            child: Text(
              page.title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Expanded(
            child: Text(
              page.description,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: page.descripColor,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _showGetStartedButton() {
    return GestureDetector(
      onTap: _getStartedTapped,
      child: Padding(
        padding: EdgeInsets.only(left: 80.0,right: 80.0,top: 30.0),
        child: Container(
          height: 40.0,
          width: 50.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                color: kprimarylightcolor,
                offset: Offset(0.0, 1.0), //(x,y)
                blurRadius: 8.0,
              ),
            ]
          ),
          child: FlatButton(
            onPressed: () {
              print('Get Started clicked');
              Navigator.push(context, MaterialPageRoute(builder: (context) => Login_Screen1()));
            },
            child: Text(
              'Get Started',
              style: TextStyle(
                  color: kPrimaryColor.withOpacity(0.9),
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ),
    );
  }

  void _getStartedTapped() {
    widget.getStartedClicked("Get Started Tapped");
  }
}

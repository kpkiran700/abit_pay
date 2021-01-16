import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:abit_pay/Constants/Constants.dart';
import 'package:flutter/painting.dart';

class Login_Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      backgroundColor: kPrimaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: Container(
              padding: EdgeInsets.only(
                  top: 0, left: 30.0, right: 30.0, bottom: 30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome back!',
                    style: TextStyle(
                        fontSize: 28.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Login to your ABiTPay account!',
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.white.withOpacity(0.6),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: NeverScrollableScrollPhysics(),
              child: Container(
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.0),
                    topLeft: Radius.circular(20.0),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                      top: 40, left: 30.0, right: 30.0,bottom: 30.0),
                  child: Column(
                    children: [
                      Container(
                        height: 45.0,
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: "Email ID",
                            labelStyle: TextStyle(
                                fontSize: 14, color: Colors.grey.shade400),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.grey.shade300,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: kPrimaryColor,
                                )),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        height: 45.0,
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: "Password",
                            labelStyle: TextStyle(
                                fontSize: 14, color: Colors.grey.shade400),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.grey.shade300,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: kPrimaryColor,
                              ),
                            ),
                            suffixText: 'Show',
                            suffixStyle: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Row(
                              children: [
                                Icon(Icons.check_box_outline_blank),
                                SizedBox(
                                  width: 8.0,
                                ),
                                Text(
                                  "Keep me signed in",
                                  style: TextStyle(
                                      fontSize: 14, fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Text(
                              "Forgot Password ?",
                              style: TextStyle(
                                  color: kPrimaryColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 1,
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                  height: 48.0,
                                  width: 172.0,
                                  child: FlatButton(
                                onPressed: () {},
                                child: Text('Create account'),
                              )),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                height: 48.0,
                                  width: 172.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: kPrimaryColor
                                  ),
                                  child: FlatButton(
                                onPressed: () {},
                                child: Text('Log in',style: TextStyle(color: Colors.white),),
                              )),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

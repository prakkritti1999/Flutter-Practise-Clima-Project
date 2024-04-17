import 'dart:async';

import 'package:flutter/material.dart';
import 'dashboard.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), (){
      Navigator.push(context, 
      MaterialPageRoute(builder: (context) => Dashboard(),));
    });
  }
  @override
    Widget build(BuildContext context) {
      return Scaffold(
          body: Stack(
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                child: Container(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/icon.jpg"),
                      Container(
                        width: 100,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Rapid ", style: TextStyle(color: Color(0xFF117F00), fontSize: 20)),
                          Text("CARGO SERVICE", style:
                          TextStyle(
                              color: Color(0xFF117F00),
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              fontFamily: 'Roboto Mono'
                          ),
                          ),
                        ],
                      ),
                      Container(
                          decoration: BoxDecoration(
                              border: Border(top: BorderSide(
                                width: 1,
                                color: Color(0xFFEB8E02),
                              ))
                          ),
                          child: Text("INDIAN RAILWAYS", style:
                          TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF676767)
                          ))),
                      Container(
                        height: 100,
                      ),
                      Container(
                        width: 300,
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Text("Green & Energy Efficient Transportation Solution",
                              style: TextStyle(
                                color: Color(0xFF117F00),
                                fontSize: 20,
                                fontFamily: "calibri",
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 0,
                bottom: 100,
                width: 7.0,
                child: Container(
                  color: Colors.greenAccent,
                ),
              ),

              Positioned(
                right: 0,
                top: 100,
                bottom: 0,
                width: 7.0,
                child: Container(
                  color: Colors.greenAccent,
                ),
              ),
            ],
          )
      );
    }
}
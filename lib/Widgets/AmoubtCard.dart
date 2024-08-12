import 'package:crpto_wallet_ui/constants/contants.dart';
import 'package:flutter/material.dart';

class Amoubtcard extends StatelessWidget {
  const Amoubtcard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
              margin: EdgeInsets.all(5),
              color: Constants.white,
              height: 250,
              child: Stack(
                children: [
                  Positioned(
                    top: 20,
                    bottom: 20,
                    right: 0,
                    left: 0,
                    child: Container(
                      margin: EdgeInsets.all(15),
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.elliptical(250, 18),
                            topRight: Radius.elliptical(250, 18),
                            bottomRight: Radius.elliptical(250, 20),
                            bottomLeft: Radius.elliptical(250, 20),
                          ),
                          gradient: LinearGradient(colors: [
                            Constants.darkPurple,
                            Constants.lightPurple
                          ])),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 20,
                            left: 20,
                            child: Text(
                              "2.70% Days",
                              style: TextStyle(
                                  color: Constants.white, fontSize: 16),
                            ),
                          ),
                          Positioned(
                            top: 40,
                            left: 20,
                            child: Text(
                              "\$12.670.90",
                              style: TextStyle(
                                  color: Constants.white,
                                  fontSize: 36,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    right: 6,
                    child: Image.asset("assets/coin_stack.png"),
                  ),
                  Positioned(
                      bottom: 12,
                      left: 30,
                      child: Container(
                      
                        
                        child: FloatingActionButton(
                          onPressed: () {},
                          child: Image.asset("assets/plus_icon.png"),
                          backgroundColor: Constants.darkPink,
                        ),
                      ))
                ],
              ),
            );
  }
}
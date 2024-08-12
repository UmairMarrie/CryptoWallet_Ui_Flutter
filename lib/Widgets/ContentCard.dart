import 'package:crpto_wallet_ui/constants/contants.dart';
import 'package:flutter/material.dart';

class Contentcard extends StatelessWidget {
  final String image;
  final Color color;
  const Contentcard({super.key, required this.image, required this.color});

  @override
  Widget build(BuildContext context) {
    return  Container(
                  height: 200,
                  width: 180,
                  padding: EdgeInsets.all(5),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(40)),
                  child: Stack(
                    children: [
                      Positioned(
                        right: 0,
                        top: 30,
                        bottom: 0,
                        left: 0,
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              color: color,
                              borderRadius: BorderRadius.circular(40)),
                        ),
                      ),
                      Positioned(
                        bottom: 20,
                        left: 0,
                        right: 0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Recieve",
                              style: TextStyle(
                                  color: Constants.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Image.asset("assets/arrow_icon.png")
                          ],
                        ),
                      ),
                      Positioned(
                        right: 0,
                        top: 5,
                        child: Image.asset("$image"),
                      )
                    ],
                  ),
                );
  }
}
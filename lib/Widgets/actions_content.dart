import 'package:crpto_wallet_ui/constants/contants.dart';
import 'package:flutter/material.dart';

class ActionsContent extends StatelessWidget {
  const ActionsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                   
                      children: [
                        Text(
                          "Top Movers",
                          style: TextStyle(
                              color: Constants.black,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                       Row(   
                        children: [
                         Container(
                          height: 120,
                          width: 150,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Constants.lightGrey),
                          child: Stack(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "+34.98%",
                                    style: TextStyle(
                                        color: Constants.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "BTC \$21.58%",
                                    style: TextStyle(
                                        color: Constants.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Align(
                            alignment: Alignment.bottomRight,
                            child: Image.asset("assets/purple_graph.png"),)
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 20,),
                         Container(
                          height: 120,
                          width: 150,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Constants.lightGrey),
                          child: Stack(children: [
                            Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "+34.98%",
                                style: TextStyle(
                                    color: Constants.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "BTC \$21.58%",
                                style: TextStyle(
                                    color: Constants.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                               Align(
                            alignment: Alignment.bottomRight,
                            child: Image.asset("assets/pink_graph.png"),)
                            ],
                          ),
                         
                          ],)
                        )
                       ],)
                      ],
                    ),
                  );
  }
}
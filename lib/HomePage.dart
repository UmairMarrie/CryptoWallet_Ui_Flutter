import 'package:crpto_wallet_ui/Widgets/AmoubtCard.dart';
import 'package:crpto_wallet_ui/Widgets/ContentCard.dart';
import 'package:crpto_wallet_ui/Widgets/actions_content.dart';
import 'package:crpto_wallet_ui/constants/contants.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constants.white,
        toolbarHeight: 90,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello Umair",
                  style: TextStyle(color: Constants.pink, fontSize: 24),
                ),
                Text(
                  "Welcome Back",
                  style: TextStyle(
                      color: Constants.black,
                      fontSize: 32,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Constants.lightGrey),
              child: Image.asset("assets/icon_notifications.png"),
            )
          ],
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Constants.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Amoubtcard(),
              Container(
                padding: EdgeInsets.only(left: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Actions",
                      style: TextStyle(
                          color: Constants.black,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Contentcard(
                          image: "assets/hands.png",
                          color: Constants.pink,
                        ),
                        Contentcard(
                          image: "assets/pocket.png",
                          color: Constants.lightPurple,
                        ),
                      ],
                    ),
                    ActionsContent(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Constants.white,
        color: Constants.darkPurple,
        buttonBackgroundColor: Constants.darkPurple,
        items: [
          Image.asset("assets/Home.png"),
          Image.asset("assets/wallet.png"),
          Image.asset("assets/market.png"),
          Image.asset("assets/setting.png"),
        ],
      ),
      floatingActionButton: SizedBox(
       
        width: 70,
        height: 70,
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
          child: FloatingActionButton(
            
            backgroundColor: Constants.mediumPurple,
            onPressed: () {},
            child: Image.asset("assets/swap-fill.png"),
            
          ),
        ),
      ),
    
    );
  }
}

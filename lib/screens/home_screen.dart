import 'package:actors_profiles/ui_elements/colors_in_use.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: const Color(0xffefefef),
        backgroundColor: bgColor,
        appBar: AppBar(
          backgroundColor: myGreen,
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: bgColor,
              size: 32,
            ),
            onPressed: () {},
          ),
          elevation: 0.0,
        ),
        body: SafeArea(
          child: Column(children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      myGreen,
                      bgColor_zeroOpacity,
                    ],
                  ),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/3small_logo_trans.png"),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ),
          ]),
        ));
  }
}

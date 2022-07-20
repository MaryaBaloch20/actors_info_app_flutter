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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
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
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                padding: EdgeInsets.only(top: 80, left: 20, right: 20),
                decoration: BoxDecoration(
                  color: myGreen,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(250),
                    topRight: Radius.circular(250),
                  ),
                ),
                clipBehavior: Clip.antiAlias,
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "Find Your Fav",
                        style: TextStyle(
                          fontSize: 35,
                        ),
                      ),
                      const Text(
                        "CELEBRITIES",
                        style: TextStyle(
                            fontSize: 45,
                            // color: bgColor,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: bgColor,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Search you're looking for",
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.search,
                              color: myGreen,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

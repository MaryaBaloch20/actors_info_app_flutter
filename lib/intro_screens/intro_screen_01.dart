import 'package:flutter/material.dart';

class IntroScreen1 extends StatelessWidget {
  const IntroScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffefefef),
      child: Center(
        child: Column(
          children: const [
            Image(
              image: AssetImage("assets/images/small_logo_trans.png"),
            ),
            Image(
              image: AssetImage("assets/images/intro4.png"),
            ),
          ],
        ),
      ),
    );
  }
}

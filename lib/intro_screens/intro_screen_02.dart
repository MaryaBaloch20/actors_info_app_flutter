import 'package:flutter/material.dart';

class IntroScreen2 extends StatelessWidget {
  const IntroScreen2({Key? key}) : super(key: key);

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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Image(
                image: AssetImage("assets/images/intro2.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

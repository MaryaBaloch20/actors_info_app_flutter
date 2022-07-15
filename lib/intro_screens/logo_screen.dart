import 'package:flutter/material.dart';

class LogoScreen extends StatelessWidget {
  const LogoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffefefef),
      child: const Center(
        child: Image(
          image: AssetImage("assets/images/logo_trans.png"),
        ),
      ),
    );
  }
}

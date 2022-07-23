import 'package:actors_profiles/ui_elements/colors_in_use.dart';
import 'package:flutter/material.dart';

class HomeScreenCard extends StatelessWidget {
  const HomeScreenCard({Key? key, required this.imageName}) : super(key: key);

  //Variables
  final String imageName;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(16),
        image: DecorationImage(
            image: AssetImage("assets/images/${imageName}.jpg"),
            fit: BoxFit.cover),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ChildReusableCard extends StatelessWidget {
  final IconData icon;
  final String iconText;
  ChildReusableCard({required this.icon,required this.iconText});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
          color: Colors.white
        ),
        const SizedBox(
          height: 15,
        ),
        Text(iconText, style: TextStyle(color: Colors.white),),
      ],
    );
  }
}

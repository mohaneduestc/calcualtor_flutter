import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Widget child;
  ReusableCard({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Color(0xFF282B4E), borderRadius: BorderRadius.circular(10)),
    );
  }
}

import 'package:flutter/material.dart';

import './roounded_icon_button.dart';

class FullIconsWindows extends StatelessWidget {
  final VoidCallback onPressed1;
  final VoidCallback onPressed2;
  final IconData icon1;
  final IconData icon2;
  FullIconsWindows(
      {required this.icon1,
      required this.icon2,
      required this.onPressed1,
      required this.onPressed2});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RoundedIconButton(
          icon: icon1,
          onPressed: onPressed1,
        ),
        SizedBox(
          width: 10,
        ),
        RoundedIconButton(
          icon: icon2,
          onPressed: onPressed2,
        )
      ],
    );
  }
}

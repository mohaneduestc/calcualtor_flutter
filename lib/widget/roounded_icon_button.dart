import 'package:flutter/material.dart';


class RoundedIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  RoundedIconButton({required this.icon, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        icon,
        color: Colors.white,
      ),
      constraints: BoxConstraints.tightFor(width: 65, height: 65),
      onPressed: onPressed,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      elevation: 6,
    );
  }
}

import 'package:flutter/material.dart';

class SocialCard extends StatelessWidget {
  final IconData icon; // Use IconData instead of FontAwesomeIcons
  final Color backgroundColor;
  final VoidCallback onPressed;
  final Color iconColor;

  SocialCard({
    required this.iconColor,
    required this.icon,
    required this.backgroundColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: backgroundColor,
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          size: 30,
          color: iconColor,
        ),
      ),
    );
  }
}

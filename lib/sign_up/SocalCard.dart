import 'package:flutter/material.dart';

/// Widget constructs the SocialCard
class SocialCard extends StatelessWidget {
  final IconData icon; // Icon data for the icon
  final Color backgroundColor; // Background color of the circular container
  final VoidCallback onPressed; // Callback function when the card is pressed
  final Color iconColor; // Color of the icon

  SocialCard({
    required this.iconColor,
    required this.icon,
    required this.backgroundColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed, // Calls the provided onPressed function when tapped
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: backgroundColor,
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon, // The icon to be displayed
          size: 30, // Icon size
          color: iconColor, // Icon color
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SocialIcon extends StatelessWidget {
  const SocialIcon({
    super.key,
    required this.icon,
  });

  // icon data
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Icon(icon),
    );
  }
}

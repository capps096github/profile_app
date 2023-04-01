import 'package:flutter/material.dart';

class TitleRoleSection extends StatelessWidget {
  const TitleRoleSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text(
          "Cephas Brian",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        // spacing of 8\
        SizedBox(height: 8),
        // role
        Text(
          "FLUTTER DEVELOPER",
          style: TextStyle(
            fontSize: 15,
          ),
        ),
      ],
    );
  }
}

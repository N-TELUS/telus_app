import 'package:flutter/material.dart';
import 'package:telus_app/colors.dart';

class TelusPulse extends StatelessWidget {
  const TelusPulse({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            color: ThemeColors.primaryColor.withOpacity(0.05),
            shape: BoxShape.circle,
          ),
        ),
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: ThemeColors.primaryColor.withOpacity(0.1),
            shape: BoxShape.circle,
          ),
        ),
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            color: ThemeColors.primaryColor.withOpacity(0.25),
            shape: BoxShape.circle,
          ),
        ),
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: ThemeColors.primaryColor.withOpacity(0.5),
            shape: BoxShape.circle,
          ),
        ),
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: ThemeColors.primaryColor.withOpacity(1.0),
            shape: BoxShape.circle,
          ),
        ),
      ],
    );
  }
}

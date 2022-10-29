import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:telus_app/colors.dart';
import 'package:telus_app/screens/todo/todo_screen.dart';

class AppIcon extends StatelessWidget {
  const AppIcon({
    Key? key,
    required this.screenName,
    required this.imageName,
  }) : super(key: key);

  final Widget screenName;
  final String imageName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => screenName,
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: ThemeColors.cardColor,
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.all(10),
        child: SvgPicture.asset(
          "assets/svg/$imageName",
          width: 30,
        ),
      ),
    );
  }
}

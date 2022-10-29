import 'package:flutter/material.dart';
import 'package:telus_app/colors.dart';

class SpeakSection extends StatelessWidget {
  const SpeakSection({
    Key? key,
    required this.speakContent,
  }) : super(key: key);

  final String speakContent;

  @override
  Widget build(BuildContext context) {
    return Text(
      speakContent,
      textAlign: TextAlign.center,
      style: const TextStyle(
        color: ThemeColors.fontColor,
        fontSize: 20,
      ),
    );
  }
}

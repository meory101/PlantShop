import 'package:flutter/material.dart';
import 'package:profile/theme/colors.dart';
import 'package:profile/theme/fonts.dart';

class RecButton extends StatefulWidget {
  String label;
  RecButton({required this.label});
  @override
  State<RecButton> createState() => _RecButtonState();
}

class _RecButtonState extends State<RecButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 50,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: gcolor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        widget.label,
        style: med_white_font,
      ),
    );
  }
}

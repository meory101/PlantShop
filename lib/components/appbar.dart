import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  IconButton icon1;
  IconButton icon2;
  CustomAppBar({required this.icon1, required this.icon2});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        widget.icon1,
        widget.icon2,
      ],
    );
  }
}

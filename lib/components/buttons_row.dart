import 'package:flutter/material.dart';
import 'package:profile/theme/colors.dart';

class ButtonsRow extends StatefulWidget {
  int count;
  double height;
  double width;
  List<Widget> label;
  ButtonsRow(
      {super.key,
      required this.count,
      required this.height,
      required this.width,
      required this.label});
  @override
  State<ButtonsRow> createState() => _ButtonsRowState();
}

class _ButtonsRowState extends State<ButtonsRow> {
  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: widget.count,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            setState(() {
              selectedindex = index;
            });
          },
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: selectedindex == index ? pale_gcolor : grey_green_color,
               borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
            ),
            margin: const EdgeInsets.only(right: 10),
            width: widget.width,
            height: widget.height,
            child: widget.label[index],
          ),
        );
      },
    );
  }
}

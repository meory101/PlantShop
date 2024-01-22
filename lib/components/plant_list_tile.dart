import 'package:flutter/material.dart';
import 'package:profile/theme/colors.dart';
import 'package:profile/theme/fonts.dart';

class PlantListTile extends StatefulWidget {
  String price;
  String pname;
  ImageProvider image;
  PlantListTile(
      {required this.price, required this.pname, required this.image});
  @override
  State<PlantListTile> createState() => _PlantListTileState();
}

class _PlantListTileState extends State<PlantListTile> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            alignment: Alignment.center,
            width: 50,
            height: 60,
            decoration: BoxDecoration(
              color: gcolor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Text(
              widget.price,
              style: small_white_font,
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            padding: EdgeInsets.only(left: 10),
            margin: EdgeInsets.only(left: 10),
            height: 60,
            decoration: BoxDecoration(
                color: grey_green_color,
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Plant',
                      style: small_grey_font,
                    ),
                    Text(
                      widget.pname,
                      style: med_black_font,
                    ),
                  ],
                ),
                Container(
                  width: 50,
                  decoration: BoxDecoration(
                    image:
                        DecorationImage(image: widget.image, fit: BoxFit.cover),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

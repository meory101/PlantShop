import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:profile/theme/colors.dart';

class SearchButton extends StatefulWidget {
  const SearchButton({super.key});

  @override
  State<SearchButton> createState() => _SearchButtonState();
}

class _SearchButtonState extends State<SearchButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      child: TextFormField(
        cursorColor: gcolor,
        decoration: InputDecoration(
          prefixIcon: Icon(
            CupertinoIcons.search,color: gcolor,
          ),
          hintText: 'Search',
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}

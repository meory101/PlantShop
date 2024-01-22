import 'package:flutter/material.dart';
import 'package:profile/pages/home.dart';
import 'package:profile/pages/pay.dart';
import 'package:profile/pages/plant_information.dart';

void main() {
  runApp(Profile());
}

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

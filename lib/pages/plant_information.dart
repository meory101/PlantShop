import 'package:flutter/material.dart';
import 'package:profile/components/appbar.dart';
import 'package:profile/components/buttons_row.dart';
import 'package:profile/components/rec_buuton.dart';
import 'package:profile/theme/colors.dart';
import 'package:profile/theme/fonts.dart';

class PLantInfo extends StatefulWidget {
  ImageProvider? image;
  String? name;
  String? price;
  String? sales;
  String? des;
  PLantInfo({this.image, this.name, this.des, this.price, this.sales});
  @override
  State<PLantInfo> createState() => _PLantInfoState();
}

class _PLantInfoState extends State<PLantInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          color: gcolor,
          child: Stack(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 7, vertical: 10),
                alignment: Alignment.topCenter,
                height: MediaQuery.of(context).size.height / 5,
                decoration: BoxDecoration(
                  color: gcolor,
                ),
                child: CustomAppBar(
                  icon1: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                  icon2: IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/images/list.png',
                      width: 20,
                      height: 20,
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(100),
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 6),
                    height: MediaQuery.of(context).size.height / 3,
                    width: MediaQuery.of(context).size.height / 4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: widget.image!, fit: BoxFit.cover),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20, top: 100),
                    child: Column(
                      children: [
                        Text(
                          widget.name!,
                          style: title_black_font,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'price',
                                  style: small_grey_font,
                                ),
                                Text(
                                  widget.price!,
                                  style: small_grey_font,
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'sales',
                                  style: small_grey_font,
                                ),
                                Text(
                                  widget.sales!,
                                  style: small_grey_font,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 2 + 20, left: 10,right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'About Plant',
                      style: title_black_font,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      widget.des!,
                      style: med_grey_font,
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      height: 50,
                      child: ButtonsRow(
                        count: 4,
                        height: 100,
                        width: 70,
                        label: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'small',
                                style: small_grey_font,
                              ),
                              Text(
                                '20\$',
                                style: small_black_font,
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'med',
                                style: small_grey_font,
                              ),
                              Text(
                                '30\$',
                                style: small_black_font,
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'large',
                                style: small_grey_font,
                              ),
                              Text(
                                '40\$',
                                style: small_black_font,
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Mlarge',
                                style: small_grey_font,
                              ),
                              Text(
                                '50\$',
                                style: small_black_font,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                   RecButton(label: 'Add to Card')
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}

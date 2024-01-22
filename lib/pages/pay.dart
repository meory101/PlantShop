import 'package:flutter/material.dart';
import 'package:profile/components/appbar.dart';
import 'package:profile/components/plant_list_tile.dart';
import 'package:profile/components/rec_buuton.dart';
import 'package:profile/theme/fonts.dart';

class Pay extends StatefulWidget {
  const Pay({super.key});

  @override
  State<Pay> createState() => _PayState();
}

class _PayState extends State<Pay> {
  List<String> prices = ['20\$', '30\$','10\$'];
  List<String> names = ['Loti plant', 'Loli plant', 'Banana plant',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
             CustomAppBar(
                    icon1: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                    ),
                    icon2: IconButton(
                      onPressed: () {},
                      icon: CircleAvatar(
                        backgroundImage: 
                         AssetImage(
            
                          'assets/images/profile.png',
            
                         
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                    Text(
                  'Your Card',
                  style: big_black_font,
                ),
                 SizedBox(height: 20),
                  
                 Container(

                      height: MediaQuery.of(context).size.height/3,
                      child: ListView.builder(
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              PlantListTile(
                                price: prices[index],
                                pname: names[index],
                                image: AssetImage(
                                    'assets/images/${index + 1}.jpg'),
                              ),
                              SizedBox(
                                height: 30,
                              )
                            ],
                          );
                        },
                      ),
                    ),
                     SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total:',
                          style: med_black_font,
                        ),
                        Text(
                          '60\$',
                          style: med_black_font,
                        )
                      ],
                    ),
                     SizedBox(
                      height: 30,
                    ),
                   RecButton(label: 'Buy Now')
                ]            
              ),
            ),
          ),
        ),
      ),
    );
  }
}

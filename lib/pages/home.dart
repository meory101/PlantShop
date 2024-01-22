import 'package:flutter/material.dart';
import 'package:profile/components/appbar.dart';
import 'package:profile/components/buttons_row.dart';
import 'package:profile/components/plant_list_tile.dart';
import 'package:profile/components/search_button.dart';
import 'package:profile/pages/pay.dart';
import 'package:profile/pages/plant_information.dart';
import 'package:profile/theme/fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> prices = ['10\$', '30\$'];
  List<String> names = ['Banana plant', 'Loli plant'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(
                icon1: IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/images/bar.png',
                    width: 20,
                    height: 20,
                  ),
                ),
                icon2: IconButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return Pay();
                      },
                    ));
                  },
                  icon: Image.asset(
                    'assets/images/star.png',
                    width: 20,
                    height: 20,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Plant Shop',
                style: big_black_font,
              ),
              const SizedBox(
                height: 20,
              ),
              const SearchButton(),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 40,
                child: ButtonsRow(
                  count: 4,
                  height: 40,
                  width: 100,
                  label: [
                    Text(
                      'Flower',
                      style: small_black_font,
                    ),
                    Text(
                      'Trees',
                      style: small_black_font,
                    ),
                    Text(
                      'Indoor',
                      style: small_black_font,
                    ),
                    Text(
                      'Outdoor',
                      style: small_black_font,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 3,
                child: ButtonsRow(
                  count: 3,
                  height: MediaQuery.of(context).size.height / 3,
                  width: 200,
                  label: [
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) {
                                return PLantInfo(
                                    image: AssetImage('assets/images/1.jpg'),
                                    name: 'Loti plant',
                                    price: '20\$',
                                    sales: '120',
                                    des:
                                        'this is the loti plant that grows in warn areas in latest months of spring this is the loti plant that grows in warn areas in latest months of spring');
                              },
                            ));
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 7),
                            alignment: Alignment.bottomLeft,
                            height: MediaQuery.of(context).size.height / 3,
                            width: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                              ),
                              image: const DecorationImage(
                                  image: AssetImage('assets/images/1.jpg'),
                                  fit: BoxFit.cover),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Lot Tree',
                                  style: med_black_font,
                                ),
                                const Text('20\$')
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 7),
                      alignment: Alignment.bottomLeft,
                      height: MediaQuery.of(context).size.height / 3,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                        ),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/2.jpg'),
                            fit: BoxFit.cover),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Loli plant',
                            style: med_black_font,
                          ),
                          const Text('30\$')
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 7),
                      alignment: Alignment.bottomLeft,
                      height: MediaQuery.of(context).size.height / 3,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                        ),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/3.jpg'),
                            fit: BoxFit.cover),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'banana plant',
                            style: med_black_font,
                          ),
                          const Text('10\$')
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'New Arrival',
                style: title_black_font,
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        PlantListTile(
                          price: prices[index],
                          pname: names[index],
                          image: AssetImage('assets/images/${index + 2}.jpg'),
                        ),
                        SizedBox(
                          height: 10,
                        )
                      ],
                    );
                  },
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}

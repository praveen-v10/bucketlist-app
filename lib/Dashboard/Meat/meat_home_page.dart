import 'package:bucketlist/Dashboard/Meat/beef_menu_page.dart';
import 'package:bucketlist/Dashboard/Meat/chicken_menu_page.dart';
import 'package:bucketlist/Dashboard/Meat/fish_menu_page.dart';
import 'package:bucketlist/Dashboard/Meat/mutton_menu_page.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';

import '../../Widget/order_tracking1.dart';
import '../Food/food_home_page.dart';
import '../Grocery/grocery_home_page.dart';
import '../dashboard.dart';

class MeatHomePage extends StatefulWidget {
  const MeatHomePage({Key? key}) : super(key: key);

  @override
  State<MeatHomePage> createState() => _MeatHomePageState();
}

class _MeatHomePageState extends State<MeatHomePage> {

  List slideImage = ['assets/ban5.png','assets/ban6.png'];

  bool bottomNav=false;

  @override
  void initState() {
    super.initState();
    init();

  }

  init(){
    if(DashBoard.bottomIndex==3){
      setState(() {
        bottomNav=true;
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/meat_bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                size: 26,
                                color: Colors.white60,
                              ),
                              Text(
                                'Location',
                                style: TextStyle(
                                    color: Colors.white60,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Row(
                              children: [
                                Text(
                                  DashBoard.location,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14),
                                ),
                                Text(
                                  ' - ' + DashBoard.postCode,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: (){
                          Get.to(OrderTracking1());
                        },
                        child: Container(
                            child: Image.asset(
                              'assets/profile.png',
                              width: w * 0.1,
                            )),
                      )
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(12, 10, 12, 0),
                  child: TextField(
                    onChanged: (value) {
                      setState(() {});
                      // print(value.isEmail);
                    },
                    style: TextStyle(fontSize: 16, color: Colors.white60),
                    decoration: InputDecoration(
                        suffixIcon: Container(
                          width: MediaQuery.of(context).size.width * 0.32,
                          height: 40,
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.search,
                                  color: Colors.white60,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  color: Colors.white60,
                                  width: 1,
                                  height: 40,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.mic, color: Colors.white60),
                              ),
                            ],
                          ),
                        ),
                        // focusedBorder: const OutlineInputBorder(
                        //   borderSide: BorderSide(color: Colors.grey, width: 1),
                        // ),
                        // enabledBorder: const OutlineInputBorder(
                        //   borderSide: BorderSide(color: Colors.grey, width: 1),
                        // ),
                        // contentPadding:
                        //     EdgeInsets.symmetric(vertical: 12, horizontal: 15),
                        filled: true,
                        fillColor: Colors.white12,
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(8)),
                        contentPadding:
                        EdgeInsets.symmetric(vertical: 14, horizontal: 20),
                        hintText: 'Search',
                        hintStyle: TextStyle(color: Colors.white38)),
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.all(12),
                  child: GlassContainer(
                    width: MediaQuery.of(context).size.width,
                    blur: 50,
                    shadowStrength: 0,
                    color: Colors.white.withOpacity(0.1),
                    //shadowColor: Colors.grey,
                    borderRadius: BorderRadius.circular(8),
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                          child: CarouselSlider(
                            options: CarouselOptions(
                              aspectRatio: 2.0,
                              enlargeCenterPage: true,
                              scrollDirection: Axis.horizontal,
                              autoPlay: true,
                              onPageChanged: (index, reason) {
                                setState(() {
                                  // currentIndex = index;
                                });
                              },
                            ),
                            items: slideImage
                                .map(
                                  (item) => Center(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset(
                                    item,
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                  ),
                                ),
                              ),
                            )
                                .toList(),
                          )),
                    ),
                  ),
                ),

                Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                          child: Container(
                              width: w * 0.15,
                              child: Image.asset('assets/meat_head1.png',

                              )
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 4, 0, 0),
                          child: Text(
                            'Choose Your Cut',
                            style: TextStyle(
                                color: Colors.white60,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 40, 0),
                          child: Container(
                              width: w * 0.15,
                              child: Image.asset('assets/meat_head2.png',

                              )
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: GlassContainer(
                    width: MediaQuery.of(context).size.width,
                    blur: 50,
                    shadowStrength: 0,
                    color: Colors.white.withOpacity(0.1),
                    //shadowColor: Colors.grey,
                    borderRadius: BorderRadius.circular(8),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                          child: GestureDetector(
                            onTap: (){
                              Get.to(ChickenMenuPage());
                            },
                            child: Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: w * 0.3,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.asset('assets/meat_cat1.png'),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,

                                    children: [
                                      Text(
                                        'Prime Poultry',

                                        style: TextStyle(
                                            color: Colors.white70,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 24),
                                      ),
                                      Text(
                                        'Taste the Difference',

                                        style: TextStyle(
                                            color: Colors.white70,

                                            fontSize: 18),
                                      ),

                                      GlassContainer(
                                        blur: 50,
                                        shadowStrength: 0,
                                        color: Colors.white
                                            .withOpacity(0.2),
                                        borderRadius:
                                        BorderRadius.circular(8),
                                        child: Padding(
                                          padding: const EdgeInsets
                                              .symmetric(
                                              vertical: 4,
                                              horizontal: 20),
                                          child: Text(
                                            'Chicken',
                                            style: TextStyle(
                                                color: Colors.white70,
                                                fontWeight:
                                                FontWeight.bold,
                                                fontSize: 18),
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                        Divider(
                          thickness: 0.5,
                          color: Colors.white24,
                        ),

                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                          child: GestureDetector(
                            onTap: (){
                              Get.to(MuttonMenuPage());
                            },
                            child: Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: w * 0.3,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.asset('assets/meat_cat2.png'),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,

                                    children: [
                                      Text(
                                        'Premium Lamb',

                                        style: TextStyle(
                                            color: Colors.white70,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 24),
                                      ),
                                      Text(
                                        'Quality You Can Trust',

                                        style: TextStyle(
                                            color: Colors.white70,

                                            fontSize: 18),
                                      ),

                                      GlassContainer(
                                        blur: 50,
                                        shadowStrength: 0,
                                        color: Colors.white
                                            .withOpacity(0.2),
                                        borderRadius:
                                        BorderRadius.circular(8),
                                        child: Padding(
                                          padding: const EdgeInsets
                                              .symmetric(
                                              vertical: 4,
                                              horizontal: 20),
                                          child: Text(
                                            'Mutton',
                                            style: TextStyle(
                                                color: Colors.white70,
                                                fontWeight:
                                                FontWeight.bold,
                                                fontSize: 18),
                                          ),
                                        ),
                                      ),


                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                        Divider(
                          thickness: 0.5,
                          color: Colors.white24,
                        ),

                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                          child: GestureDetector(
                            onTap: (){
                              Get.to(BeefMenuPage());
                            },
                            child: Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: w * 0.3,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.asset('assets/meat_cat3.png'),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,

                                    children: [
                                      Text(
                                        'Fresh Beef',

                                        style: TextStyle(
                                            color: Colors.white70,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 24),
                                      ),
                                      Text(
                                        'Naturally Delicious',

                                        style: TextStyle(
                                            color: Colors.white70,

                                            fontSize: 18),
                                      ),

                                      GlassContainer(
                                        blur: 50,
                                        shadowStrength: 0,
                                        color: Colors.white
                                            .withOpacity(0.2),
                                        borderRadius:
                                        BorderRadius.circular(8),
                                        child: Padding(
                                          padding: const EdgeInsets
                                              .symmetric(
                                              vertical: 4,
                                              horizontal: 20),
                                          child: Text(
                                            'Beef',
                                            style: TextStyle(
                                                color: Colors.white70,
                                                fontWeight:
                                                FontWeight.bold,
                                                fontSize: 18),
                                          ),
                                        ),
                                      ),


                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),


                        Divider(
                          thickness: 0.5,
                          color: Colors.white24,
                        ),

                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                          child: GestureDetector(
                            onTap: (){
                              Get.to(FishMenuPage());
                            },
                            child: Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: w * 0.3,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.asset('assets/meat_cat4.png'),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,

                                    children: [
                                      Text(
                                        'Oceanic Delights',

                                        style: TextStyle(
                                            color: Colors.white70,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 24),
                                      ),
                                      Text(
                                        'From Sea to Plate',

                                        style: TextStyle(
                                            color: Colors.white70,

                                            fontSize: 18),
                                      ),

                                      GlassContainer(
                                        blur: 50,
                                        shadowStrength: 0,
                                        color: Colors.white
                                            .withOpacity(0.2),
                                        borderRadius:
                                        BorderRadius.circular(8),
                                        child: Padding(
                                          padding: const EdgeInsets
                                              .symmetric(
                                              vertical: 4,
                                              horizontal: 20),
                                          child: Text(
                                            'Fish',
                                            style: TextStyle(
                                                color: Colors.white70,
                                                fontWeight:
                                                FontWeight.bold,
                                                fontSize: 18),
                                          ),
                                        ),
                                      ),


                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                )

              ],
            ),
          ),
        ),
      ),

        extendBody: true,
        bottomNavigationBar:Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: Container(
            child: SingleChildScrollView(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GlassContainer(
                    width: MediaQuery.of(context).size.width ,
                    height: MediaQuery.of(context).size.height * 0.07,
                    blur: 50,
                    shadowStrength: 0,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight:  Radius.circular(8),
                    ),
                    color: Colors.white.withOpacity(0.1),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [

                          GestureDetector(
                            onTap:(){
                              // setState(() {
                              //   DashBoard.bottomIndex=3;
                              // });
                              Get.to(DashBoard());
                            },
                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(CupertinoIcons.home,color:Colors.white38,size: 28,),
                                  Text(
                                    'Home',
                                    style: TextStyle(
                                        color: Colors.white38,
                                        fontWeight:
                                        FontWeight.bold,
                                        fontSize: 14),
                                  ),

                                ],
                              ),
                            ),
                          ),


                          GestureDetector(
                            onTap:(){
                              setState(() {
                                DashBoard.bottomIndex=1;
                              });
                              Get.to(FoodHomePage());
                            },
                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                      width: w * 0.08,
                                      child: Image.asset('assets/bottom_icon1.png',
                                        opacity: const AlwaysStoppedAnimation(0.5),
                                      )
                                  ),
                                  Text(
                                    'Food',
                                    style: TextStyle(
                                        color: Colors.white38,
                                        fontWeight:
                                        FontWeight.bold,
                                        fontSize: 14),
                                  ),

                                ],
                              ),
                            ),
                          ),

                          // SizedBox(width: 20,),
                          GestureDetector(
                            onTap:(){
                              setState(() {
                                DashBoard.bottomIndex=2;
                              });
                              Get.to(GroceryHomePage());
                            },
                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                      width: w * 0.08,
                                      child: Image.asset('assets/bottom_icon2.png',
                                        opacity: const AlwaysStoppedAnimation(0.5),
                                      )
                                  ),
                                  Text(
                                    'Grocery',
                                    style: TextStyle(
                                        color: Colors.white38,
                                        fontWeight:
                                        FontWeight.bold,
                                        fontSize: 14),
                                  ),

                                ],
                              ),
                            ),
                          ),

                          GestureDetector(
                            onTap:(){
                              // setState(() {
                              //   DashBoard.bottomIndex=3;
                              // });
                              // Get.to(MeatHomePage());
                            },
                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                      width: w * 0.08,
                                      child: Image.asset('assets/bottom_icon3.png',
                                       // opacity: const AlwaysStoppedAnimation(0.5),
                                      )
                                  ),
                                  Text(
                                    'Meat',
                                    style: TextStyle(
                                        color: bottomNav?Colors.white:Colors.white38,
                                        fontWeight:
                                        FontWeight.bold,
                                        fontSize: 14),
                                  ),

                                ],
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )


    );
  }
}

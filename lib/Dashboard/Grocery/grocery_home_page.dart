import 'package:bucketlist/Dashboard/Food/food_home_page.dart';
import 'package:bucketlist/Dashboard/Grocery/Fruit/fruits_page.dart';
import 'package:bucketlist/Dashboard/Grocery/grocery_menu_page.dart';
import 'package:bucketlist/Dashboard/Grocery/vegetable/vegetables_page.dart';
import 'package:bucketlist/Dashboard/Meat/meat_home_page.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';

import '../../Widget/order_tracking1.dart';
import '../dashboard.dart';
import 'grocery_order_summary_page.dart';

class GroceryHomePage extends StatefulWidget {
  const GroceryHomePage({Key? key}) : super(key: key);

  @override
  State<GroceryHomePage> createState() => _GroceryHomePageState();
}

class _GroceryHomePageState extends State<GroceryHomePage> {
  List slideImage = ['assets/ban2.png','assets/ban4.png'];

  bool bottomNav=false;

  @override
  void initState() {
    super.initState();
    init();

  }

  init(){
    if(DashBoard.bottomIndex==2){
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
            image: AssetImage("assets/grocery_bg.png"),
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
                SizedBox(height: 20,),
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
                              child: Image.asset(
                                'assets/grocery_head1.png',
                                opacity: const AlwaysStoppedAnimation(0.5),
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 4, 0, 0),
                          child: Text(
                            'Pick Your Plate',
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
                              child: Image.asset(
                                'assets/grocery_head2.png',
                                opacity: const AlwaysStoppedAnimation(0.5),
                              )),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: (){
                              Get.to(GroceryMenuPage());
                            },
                            child: Container(
                              child: Column(
                                children: [
                                  Container(
                                      width: w * 0.2,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.2),
                                            spreadRadius: 5,
                                            blurRadius: 7,
                                            offset: Offset(0,
                                                3), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Image.asset(
                                        'assets/grocery_cat1.png',
                                      )),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 6, 0, 0),
                                    child: Text(
                                      'Grocery',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.to(VegetablesPage());
                            },
                            child: Container(
                              child: Column(
                                children: [
                                  Container(
                                      width: w * 0.2,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.2),
                                            spreadRadius: 5,
                                            blurRadius: 7,
                                            offset: Offset(0,
                                                3), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Image.asset(
                                        'assets/grocery_cat2.png',
                                      )),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 6, 0, 0),
                                    child: Text(
                                      'Vegitables',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.to(FruitsPage());
                            },
                            child: Container(
                              child: Column(
                                children: [
                                  Container(
                                      width: w * 0.2,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.2),
                                            spreadRadius: 5,
                                            blurRadius: 7,
                                            offset: Offset(0,
                                                3), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Image.asset(
                                        'assets/grocery_cat3.png',
                                      )),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 6, 0, 0),
                                    child: Text(
                                      'Fruits',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),

                SizedBox(height: 20,),

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: GlassContainer(

                    width: MediaQuery.of(context).size.width,
                    blur: 50,
                    shadowStrength: 0,
                    color: Colors.white.withOpacity(0.1),
                    //shadowColor: Colors.grey,
                    borderRadius: BorderRadius.circular(8),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                            child: Text(
                              'Explore Combo',
                              style: TextStyle(
                                  color: Colors.white54,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  width: w * 0.22,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.asset(
                                        'assets/grocery_combo1.png'),
                                  ),
                                ),
                                Icon(
                                  Icons.add,
                                  color: Colors.white70,
                                ),
                                Container(
                                  width: w * 0.22,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.asset(
                                        'assets/grocery_combo2.png'),
                                  ),
                                ),
                                Icon(
                                  Icons.add,
                                  color: Colors.white70,
                                ),
                                Container(
                                  width: w * 0.22,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.asset(
                                        'assets/grocery_combo3.png'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                            child: Container(
                              child: SingleChildScrollView(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    GestureDetector(
                                      onTap: (){
                                        Get.to(GroceryMenuPage());
                                      },
                                      child: GlassContainer(
                                        width: MediaQuery.of(context).size.width *
                                            0.7,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.04,
                                        blur: 50,
                                        shadowStrength: 0,
                                        borderRadius: BorderRadius.circular(8),
                                        color: Colors.white.withOpacity(0.1),
                                        child: Center(
                                          child: Text(
                                            'Explore Combo',
                                            style: TextStyle(
                                                color: Colors.white70,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          ),
                                        ),
                                      ),
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
                            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                            child: Text(
                              'Weekly Pack',
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  width: w * 0.22,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child:
                                        Image.asset('assets/grocery_week1.png'),
                                  ),
                                ),
                                Icon(
                                  Icons.add,
                                  color: Colors.white70,
                                ),
                                Container(
                                  width: w * 0.22,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child:
                                        Image.asset('assets/grocery_week2.png'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                            child: Container(
                              child: SingleChildScrollView(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    GestureDetector(
                                      onTap: (){
                                        Get.to(FruitsPage());
                                      },
                                      child: GlassContainer(
                                        width: MediaQuery.of(context).size.width *
                                            0.7,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.04,
                                        blur: 50,
                                        shadowStrength: 0,
                                        borderRadius: BorderRadius.circular(8),
                                        color: Colors.white.withOpacity(0.1),
                                        child: Center(
                                          child: Text(
                                            'Buy for a Week',
                                            style: TextStyle(
                                                color: Colors.white54,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
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
                            //  Get.to(FoodHomePage());
                            },
                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                      width: w * 0.08,
                                      child: Image.asset('assets/bottom_icon2.png',
                                       // opacity: const AlwaysStoppedAnimation(0.5),
                                      )
                                  ),
                                  //Icon(Icons.home,color: bottomNav?Colors.white:Colors.white38,size: 30,),
                                  Text(
                                    'Grocery',
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

                          GestureDetector(
                            onTap:(){
                              setState(() {
                                DashBoard.bottomIndex=3;
                              });
                              Get.to(MeatHomePage());
                            },
                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                      width: w * 0.08,
                                      child: Image.asset('assets/bottom_icon3.png',
                                        opacity: const AlwaysStoppedAnimation(0.5),
                                      )
                                  ),
                                  Text(
                                    'Meat',
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

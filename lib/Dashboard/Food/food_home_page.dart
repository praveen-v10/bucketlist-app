import 'package:bucketlist/Dashboard/Food/food_menu_page.dart';
import 'package:bucketlist/Dashboard/Grocery/grocery_home_page.dart';
import 'package:bucketlist/Dashboard/dashboard.dart';
import 'package:bucketlist/Widget/order_tracking1.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';
import 'package:popover/popover.dart';

import '../Meat/meat_home_page.dart';

class FoodHomePage extends StatefulWidget {
  const FoodHomePage({Key? key}) : super(key: key);

  @override
  State<FoodHomePage> createState() => _FoodHomePageState();
}

class _FoodHomePageState extends State<FoodHomePage> {
  List slideImage = ['assets/ban1.png','assets/ban2.png'];

  bool bottomNav=false;


  bool fav1 = false;
  bool fav2 = false;
  bool fav3 = false;
  bool fav4 = false;

  @override
  void initState() {
    super.initState();
    init();

  }

  init(){
    if(DashBoard.bottomIndex==1){
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
            image: AssetImage("assets/food_bg.png"),
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
                                      color: Colors.white70, fontSize: 14),
                                ),
                                Text(
                                  ' - ' + DashBoard.postCode,
                                  style: TextStyle(
                                      color: Colors.white70, fontSize: 14),
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
                      )
                      ),
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
                          padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                          child: Container(
                              width: w * 0.15,
                              child: Image.asset('assets/head1.png')),
                        ),
                        Text(
                          'Pick Your Plate',
                          style: TextStyle(
                              color: Colors.white60,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 30, 0),
                          child: Container(
                              width: w * 0.15,
                              child: Image.asset('assets/head2.png')),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: GlassContainer(
                        width: MediaQuery.of(context).size.width,
                        blur: 50,
                        shadowStrength: 0,
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white.withOpacity(0.1),
                        //shadowColor: Colors.grey,

                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(4, 0, 0, 0),
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Container(
                                            height: h * 0.1,
                                            child: Image.asset(
                                              'assets/food_filter1.png',
                                            )),
                                        Text(
                                          'Biriyani',
                                          style: TextStyle(
                                              color: Colors.white60,
                                              fontSize: 16),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Container(
                                            height: h * 0.1,
                                            child: Image.asset(
                                              'assets/food_filter2.png',
                                            )),
                                        Text(
                                          'Rice',
                                          style: TextStyle(
                                              color: Colors.white60,
                                              fontSize: 16),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Container(
                                            height: h * 0.1,
                                            child: Image.asset(
                                              'assets/food_filter3.png',
                                            )),
                                        Text(
                                          'Roti',
                                          style: TextStyle(
                                              color: Colors.white60,
                                              fontSize: 16),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Container(
                                            height: h * 0.1,
                                            child: Image.asset(
                                              'assets/food_filter4.png',
                                            )),
                                        Text(
                                          'Dosa',
                                          style: TextStyle(
                                              color: Colors.white60,
                                              fontSize: 16),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Container(
                                            height: h * 0.1,
                                            child: Image.asset(
                                              'assets/food_filter5.png',
                                            )),
                                        Text(
                                          'Pizza',
                                          style: TextStyle(
                                              color: Colors.white60,
                                              fontSize: 16),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  child: Container(
                                    child: Column(
                                      children: [
                                        Container(
                                            height: h * 0.1,
                                            child: Image.asset(
                                              'assets/food_filter6.png',
                                            )),
                                        Text(
                                          'Burger',
                                          style: TextStyle(
                                              color: Colors.white60,
                                              fontSize: 16),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 1,
                                      color: Colors.white60
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 6),
                                          child: Text('Filter',style: TextStyle(fontSize: 16,color: Colors.white60),),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 6),
                                          child: Icon(Icons.filter_alt_outlined,color: Colors.white60,size: 14),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1,
                                        color: Colors.white60
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 6),
                                          child: Text('Sort by',style: TextStyle(fontSize: 16,color: Colors.white60),),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 6),
                                          child: Icon(Icons.arrow_drop_down,color: Colors.white60,size: 20),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1,
                                        color: Colors.white60
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 6),
                                          child: Text('Ratting',style: TextStyle(fontSize: 16,color: Colors.white60),),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 6),
                                          child: Icon(Icons.star_outline,color: Colors.white60,size: 14),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1,
                                        color: Colors.white60
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 6),
                                          child: Text('Price',style: TextStyle(fontSize: 16,color: Colors.white60),),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 6),
                                          child: Icon(Icons.currency_rupee,color: Colors.white60,size: 14,),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),


                    GestureDetector(
                      onTap: (){
                        Get.to(FoodMenuPage());
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: GlassContainer(
                          width: MediaQuery.of(context).size.width,
                          blur: 50,
                          shadowStrength: 0,
                          color: Colors.white.withOpacity(0.1),
                          //shadowColor: Colors.grey,
                          borderRadius: BorderRadius.circular(8),
                          child: Stack(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Stack(
                                      children: [
                                        Container(
                                          width: w * 0.36,
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(8),
                                            child: Image.asset('assets/food_hotel1.png'),
                                          ),
                                        ),
                                        Positioned(
                                          top: 6,
                                          right: 6,
                                          child: GestureDetector(
                                            onTap: (){
                                              if(fav1 == false){
                                                setState(() {
                                                  fav1 = true;
                                                });
                                              } else  {
                                                setState(() {
                                                  fav1 = false;
                                                });
                                              }
                                            },
                                              child: fav1?Icon(Icons.favorite, color: Colors.red.shade500):Icon(Icons.favorite_border_outlined, color: Colors.white60)),
                                        ),
                                        Positioned(
                                          bottom: 10,
                                          left: 10,
                                          right: 0,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                '60% OFF',
                                                style: TextStyle(color: Colors.white70,fontWeight: FontWeight.bold,fontSize: 22),
                                              ),
                                              Text(
                                                'Up to ₹120',
                                                style: TextStyle(color: Colors.white70,fontSize: 18),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'New Taj Hotel',
                                        style: TextStyle(color: Colors.white70,fontWeight: FontWeight.bold,fontSize: 22),
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star_outlined,
                                            size: 12,
                                            color: Colors.amber.shade500,
                                          ),
                                          Icon(
                                            Icons.star_outlined,
                                            size: 12,
                                            color: Colors.amber.shade500,
                                          ),
                                          Icon(
                                            Icons.star_outlined,
                                            size: 12,
                                            color: Colors.amber.shade500,
                                          ),
                                          Icon(
                                            Icons.star_outlined,
                                            size: 12,
                                            color: Colors.amber.shade500,
                                          ),
                                          Icon(
                                            Icons.star_outlined,
                                            size: 12,
                                            color: Colors.amber.shade500,
                                          ),
                                          Text('(6k+)', style: TextStyle(color: Colors.white70,fontSize: 18),),
                                        ],
                                      ),
                                      Text(
                                        'VEG . NON-VEG',
                                        style: TextStyle(color: Colors.white70,fontSize: 12),
                                      ),
                                      Text(
                                        'Chinese, North Indian, South Indian',
                                        style: TextStyle(color: Colors.white70,fontSize: 12),
                                      ),
                                    ],
                                  ),

                                ],
                              ),
                              Positioned(
                                  top: 8, // Adjust this value as per your preference for vertical positioning
                                  right: 8,
                                  child: Icon(Icons.more_vert_outlined,color: Colors.white60,)),
                            ],
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: GestureDetector(
                        onTap: (){
                          Get.to(FoodMenuPage());
                        },
                        child: GlassContainer(
                          width: MediaQuery.of(context).size.width,
                          blur: 50,
                          shadowStrength: 0,
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white.withOpacity(0.1),
                          //shadowColor: Colors.grey,
                          child: Stack(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Stack(
                                      children: [
                                        Container(
                                          width: w * 0.36,
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(8),
                                            child: Image.asset('assets/food_hotel2.png'),
                                          ),
                                        ),
                                        Positioned(
                                          top: 6,
                                          right: 6,
                                          child: GestureDetector(
                                              onTap: (){
                                                if(fav2 == false){
                                                  setState(() {
                                                    fav2 = true;
                                                  });
                                                } else  {
                                                  setState(() {
                                                    fav2 = false;
                                                  });
                                                }
                                              },
                                              child: fav2?Icon(Icons.favorite, color: Colors.red.shade500):Icon(Icons.favorite_border_outlined, color: Colors.white60)),
                                        ),
                                        Positioned(
                                          bottom: 10,
                                          left: 10,
                                          right: 0,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                '40% OFF',
                                                style: TextStyle(color: Colors.white70,fontWeight: FontWeight.bold,fontSize: 22),
                                              ),
                                              Text(
                                                'Up to ₹100',
                                                style: TextStyle(color: Colors.white70,fontSize: 18),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'A2B Hotel',
                                        style: TextStyle(color: Colors.white70,fontWeight: FontWeight.bold,fontSize: 22),
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star_outlined,
                                            size: 12,
                                            color: Colors.amber.shade500,
                                          ),
                                          Icon(
                                            Icons.star_outlined,
                                            size: 12,
                                            color: Colors.amber.shade500,
                                          ),
                                          Icon(
                                            Icons.star_outlined,
                                            size: 12,
                                            color: Colors.amber.shade500,
                                          ),
                                          Icon(
                                            Icons.star_outlined,
                                            size: 12,
                                            color: Colors.amber.shade500,
                                          ),
                                          Icon(
                                            Icons.star_outlined,
                                            size: 12,
                                            color: Colors.amber.shade500,
                                          ),
                                          Text('(10k+)', style: TextStyle(color: Colors.white70,fontSize: 18),),
                                        ],
                                      ),
                                      Text(
                                        'VEG',
                                        style: TextStyle(color: Colors.white70,fontSize: 12),
                                      ),
                                      Text(
                                        'Chinese, North Indian, South Indian',
                                        style: TextStyle(color: Colors.white70,fontSize: 12),
                                      ),
                                    ],
                                  ),

                                ],
                              ),
                              Positioned(
                                  top: 8, // Adjust this value as per your preference for vertical positioning
                                  right: 8,
                                  child: Icon(Icons.more_vert_outlined,color: Colors.white60,)),
                            ],
                          ),
                        ),
                      ),
                    ),


                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: GestureDetector(
                        onTap: (){
                          Get.to(FoodMenuPage());
                        },
                        child: GlassContainer(
                          width: MediaQuery.of(context).size.width,
                          blur: 50,
                          shadowStrength: 0,
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white.withOpacity(0.1),
                          //shadowColor: Colors.grey,
                          child: Stack(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Stack(
                                      children: [
                                        Container(
                                          width: w * 0.36,
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(8),
                                            child: Image.asset('assets/food_hotel3.png'),
                                          ),
                                        ),
                                        Positioned(
                                          top: 6,
                                          right: 6,
                                          child: GestureDetector(
                                              onTap: (){
                                                if(fav3 == false){
                                                  setState(() {
                                                    fav3 = true;
                                                  });
                                                } else  {
                                                  setState(() {
                                                    fav3 = false;
                                                  });
                                                }
                                              },
                                              child: fav3?Icon(Icons.favorite, color: Colors.red.shade500):Icon(Icons.favorite_border_outlined, color: Colors.white60)),
                                        ),
                                        Positioned(
                                          bottom: 10,
                                          left: 10,
                                          right: 0,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                '20% OFF',
                                                style: TextStyle(color: Colors.white70,fontWeight: FontWeight.bold,fontSize: 22),
                                              ),
                                              Text(
                                                'Up to ₹70',
                                                style: TextStyle(color: Colors.white70,fontSize: 18),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Jolly Hotel',
                                        style: TextStyle(color: Colors.white70,fontWeight: FontWeight.bold,fontSize: 22),
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star_outlined,
                                            size: 12,
                                            color: Colors.amber.shade500,
                                          ),
                                          Icon(
                                            Icons.star_outlined,
                                            size: 12,
                                            color: Colors.amber.shade500,
                                          ),
                                          Icon(
                                            Icons.star_outlined,
                                            size: 12,
                                            color: Colors.amber.shade500,
                                          ),
                                          Icon(
                                            Icons.star_half_outlined,
                                            size: 12,
                                            color: Colors.amber.shade500,
                                          ),

                                          Text('(3k+)', style: TextStyle(color: Colors.white70,fontSize: 18),),
                                        ],
                                      ),
                                      Text(
                                        'VEG . NON-VEG',
                                        style: TextStyle(color: Colors.white70,fontSize: 12),
                                      ),
                                      Text(
                                        'Chinese, North Indian, South Indian',
                                        style: TextStyle(color: Colors.white70,fontSize: 12),
                                      ),
                                    ],
                                  ),

                                ],
                              ),
                              Positioned(
                                  top: 8, // Adjust this value as per your preference for vertical positioning
                                  right: 8,
                                  child: Icon(Icons.more_vert_outlined,color: Colors.white60,)),
                            ],
                          ),
                        ),
                      ),
                    ),


                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: GestureDetector(
                        onTap: (){
                          Get.to(FoodMenuPage());
                        },
                        child: GlassContainer(
                          width: MediaQuery.of(context).size.width,
                          blur: 50,
                          shadowStrength: 0,
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white.withOpacity(0.1),
                          //shadowColor: Colors.grey,
                          child: Stack(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Stack(
                                      children: [
                                        Container(
                                          width: w * 0.36,
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(8),
                                            child: Image.asset('assets/food_hotel4.png'),
                                          ),
                                        ),
                                        Positioned(
                                          top: 6,
                                          right: 6,
                                          child: GestureDetector(
                                              onTap: (){
                                                if(fav4 == false){
                                                  setState(() {
                                                    fav4 = true;
                                                  });
                                                } else  {
                                                  setState(() {
                                                    fav4 = false;
                                                  });
                                                }
                                              },
                                              child: fav4?Icon(Icons.favorite, color: Colors.red.shade500):Icon(Icons.favorite_border_outlined, color: Colors.white60)),
                                        ),
                                        Positioned(
                                          bottom: 10,
                                          left: 10,
                                          right: 0,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                '40% OFF',
                                                style: TextStyle(color: Colors.white70,fontWeight: FontWeight.bold,fontSize: 22),
                                              ),
                                              Text(
                                                'Up to ₹200',
                                                style: TextStyle(color: Colors.white70,fontSize: 18),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Dominos',
                                        style: TextStyle(color: Colors.white70,fontWeight: FontWeight.bold,fontSize: 22),
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star_outlined,
                                            size: 12,
                                            color: Colors.amber.shade500,
                                          ),
                                          Icon(
                                            Icons.star_outlined,
                                            size: 12,
                                            color: Colors.amber.shade500,
                                          ),
                                          Icon(
                                            Icons.star_outlined,
                                            size: 12,
                                            color: Colors.amber.shade500,
                                          ),
                                          Icon(
                                            Icons.star_outlined,
                                            size: 12,
                                            color: Colors.amber.shade500,
                                          ),
                                          Icon(
                                            Icons.star_outlined,
                                            size: 12,
                                            color: Colors.amber.shade500,
                                          ),
                                          Text('(10k+)', style: TextStyle(color: Colors.white70,fontSize: 18),),
                                        ],
                                      ),
                                      Text(
                                        'VEG . NON-VEG',
                                        style: TextStyle(color: Colors.white70,fontSize: 12),
                                      ),
                                      Text(
                                        'Italian, North Indian, South Indian',

                                        style: TextStyle(color: Colors.white70,fontSize: 12),
                                      ),
                                    ],
                                  ),

                                ],
                              ),
                              Positioned(
                                  top: 8, // Adjust this value as per your preference for vertical positioning
                                  right: 8,
                                  child: Icon(Icons.more_vert_outlined,color: Colors.white60,)),
                            ],
                          ),
                        ),
                      ),
                    ),

                    // Padding(
                    //   padding: const EdgeInsets.all(8.0),
                    //   child: GlassContainer(
                    //     width: MediaQuery.of(context).size.width,
                    //     blur: 50,
                    //     shadowStrength: 0,
                    //     color: Colors.white.withOpacity(0.1),
                    //     //shadowColor: Colors.grey,
                    //     borderRadius: BorderRadius.circular(8),
                    //     child: Padding(
                    //       padding: const EdgeInsets.all(10.0),
                    //       child: Column(
                    //         children: [
                    //         Row(
                    //         crossAxisAlignment: CrossAxisAlignment.center,
                    //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //         children: [
                    //           // First Stack
                    //           Stack(
                    //             children: [
                    //               Container(
                    //                 width: w * 0.4,
                    //                 child: ClipRRect(
                    //                   borderRadius: BorderRadius.circular(8),
                    //                   child: Image.asset('assets/dash_exp1.png'),
                    //                 ),
                    //               ),
                    //               Positioned(
                    //                 top: 6,
                    //                 right: 0,
                    //                 child: Icon(Icons.more_vert_rounded, color: Colors.white60),
                    //               ),
                    //               Positioned(
                    //                 bottom: 0,
                    //                 left: 0,
                    //                 right: 0,
                    //                 child: Padding(
                    //                   padding: const EdgeInsets.all(8.0),
                    //                   child: Column(
                    //                     crossAxisAlignment: CrossAxisAlignment.start,
                    //                     children: [
                    //                       Row(
                    //                         children: [
                    //                           Expanded(
                    //                             child: Text(
                    //                               'Taj Hotel',
                    //                               style: TextStyle(
                    //                                 color: Colors.white70,
                    //                                 fontWeight: FontWeight.bold,
                    //                                 fontSize: 18,
                    //                               ),
                    //                               overflow: TextOverflow.ellipsis,
                    //                             ),
                    //                           ),
                    //                           Padding(
                    //                             padding: const EdgeInsets.fromLTRB(6, 0, 0, 0),
                    //                             child: Row(
                    //                               children: [
                    //                                 Icon(
                    //                                   Icons.star_outlined,
                    //                                   size: 12,
                    //                                   color: Colors.cyan.shade500,
                    //                                 ),
                    //                                 Icon(
                    //                                   Icons.star_outlined,
                    //                                   size: 12,
                    //                                   color: Colors.cyan.shade500,
                    //                                 ),
                    //                                 Icon(
                    //                                   Icons.star_outlined,
                    //                                   size: 12,
                    //                                   color: Colors.cyan.shade500,
                    //                                 ),
                    //                                 Icon(
                    //                                   Icons.star_outlined,
                    //                                   size: 12,
                    //                                   color: Colors.cyan.shade500,
                    //                                 ),
                    //                                 Icon(
                    //                                   Icons.star_outlined,
                    //                                   size: 12,
                    //                                   color: Colors.cyan.shade500,
                    //                                 ),
                    //                               ],
                    //                             ),
                    //                           ),
                    //                         ],
                    //                       ),
                    //                       Row(
                    //                         children: [
                    //                           Expanded(
                    //                             child: Column(
                    //                               crossAxisAlignment: CrossAxisAlignment.start,
                    //                               children: [
                    //                                 Text(
                    //                                   'VEG . NON-VEG',
                    //                                   style: TextStyle(
                    //                                     color: Colors.white70,
                    //                                     fontWeight: FontWeight.bold,
                    //                                     fontSize: 12,
                    //                                   ),
                    //                                 ),
                    //                                 Text(
                    //                                   'Chinese, North Indian, South Indian',
                    //                                   style: TextStyle(
                    //                                     color: Colors.white70,
                    //                                     fontSize: 12,
                    //                                   ),
                    //                                 ),
                    //                               ],
                    //                             ),
                    //                           ),
                    //                           IconButton(
                    //                             onPressed: () {},
                    //                             icon: Icon(
                    //                               Icons.favorite,
                    //                               size: 24,
                    //                               color: Colors.cyan.shade500,
                    //                             ),
                    //                           )
                    //                         ],
                    //                       ),
                    //                     ],
                    //                   ),
                    //                 ),
                    //               ),
                    //             ],
                    //           ),
                    //
                    //
                    //           // Second Stack (similar to the first, omitted for brevity)
                    //
                    //           Stack(
                    //             children: [
                    //               Container(
                    //                 width: w * 0.4,
                    //                 child: ClipRRect(
                    //                   borderRadius: BorderRadius.circular(8),
                    //                   child: Image.asset('assets/dash_exp1.png'),
                    //                 ),
                    //               ),
                    //               Positioned(
                    //                 top: 6,
                    //                 right: 0,
                    //                 child: Icon(Icons.more_vert_rounded, color: Colors.white60),
                    //               ),
                    //               Positioned(
                    //                 bottom: 0,
                    //                 left: 0,
                    //                 right: 0,
                    //                 child: Padding(
                    //                   padding: const EdgeInsets.all(8.0),
                    //                   child: Column(
                    //                     crossAxisAlignment: CrossAxisAlignment.start,
                    //                     children: [
                    //                       Row(
                    //                         children: [
                    //                           Expanded(
                    //                             child: Text(
                    //                               'Taj Hotel',
                    //                               style: TextStyle(
                    //                                 color: Colors.white70,
                    //                                 fontWeight: FontWeight.bold,
                    //                                 fontSize: 18,
                    //                               ),
                    //                               overflow: TextOverflow.ellipsis,
                    //                             ),
                    //                           ),
                    //                           Padding(
                    //                             padding: const EdgeInsets.fromLTRB(6, 0, 0, 0),
                    //                             child: Row(
                    //                               children: [
                    //                                 Icon(
                    //                                   Icons.star_outlined,
                    //                                   size: 12,
                    //                                   color: Colors.cyan.shade500,
                    //                                 ),
                    //                                 Icon(
                    //                                   Icons.star_outlined,
                    //                                   size: 12,
                    //                                   color: Colors.cyan.shade500,
                    //                                 ),
                    //                                 Icon(
                    //                                   Icons.star_outlined,
                    //                                   size: 12,
                    //                                   color: Colors.cyan.shade500,
                    //                                 ),
                    //                                 Icon(
                    //                                   Icons.star_outlined,
                    //                                   size: 12,
                    //                                   color: Colors.cyan.shade500,
                    //                                 ),
                    //                                 Icon(
                    //                                   Icons.star_outlined,
                    //                                   size: 12,
                    //                                   color: Colors.cyan.shade500,
                    //                                 ),
                    //                               ],
                    //                             ),
                    //                           ),
                    //                         ],
                    //                       ),
                    //                       Row(
                    //                         children: [
                    //                           Expanded(
                    //                             child: Column(
                    //                               crossAxisAlignment: CrossAxisAlignment.start,
                    //                               children: [
                    //                                 Text(
                    //                                   'VEG . NON-VEG',
                    //                                   style: TextStyle(
                    //                                     color: Colors.white70,
                    //                                     fontWeight: FontWeight.bold,
                    //                                     fontSize: 12,
                    //                                   ),
                    //                                 ),
                    //                                 Text(
                    //                                   'Chinese, North Indian, South Indian',
                    //                                   style: TextStyle(
                    //                                     color: Colors.white70,
                    //                                     fontSize: 12,
                    //                                   ),
                    //                                 ),
                    //                               ],
                    //                             ),
                    //                           ),
                    //                           IconButton(
                    //                             onPressed: () {},
                    //                             icon: Icon(
                    //                               Icons.favorite_border_outlined,
                    //                               size: 24,
                    //                               color: Colors.cyan.shade500,
                    //                             ),
                    //                           )
                    //                         ],
                    //                       ),
                    //                     ],
                    //                   ),
                    //                 ),
                    //               ),
                    //             ],
                    //           ),
                    //
                    //
                    //         ],
                    //       ),
                    //
                    //           SizedBox(height: 20,),
                    //           Row(
                    //             crossAxisAlignment: CrossAxisAlignment.center,
                    //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //             children: [
                    //               // First Stack
                    //               Stack(
                    //                 children: [
                    //                   Container(
                    //                     width: w * 0.4,
                    //                     child: ClipRRect(
                    //                       borderRadius: BorderRadius.circular(8),
                    //                       child: Image.asset('assets/dash_exp1.png'),
                    //                     ),
                    //                   ),
                    //                   Positioned(
                    //                     top: 6,
                    //                     right: 0,
                    //                     child: Icon(Icons.more_vert_rounded, color: Colors.white60),
                    //                   ),
                    //                   Positioned(
                    //                     bottom: 0,
                    //                     left: 0,
                    //                     right: 0,
                    //                     child: Padding(
                    //                       padding: const EdgeInsets.all(8.0),
                    //                       child: Column(
                    //                         crossAxisAlignment: CrossAxisAlignment.start,
                    //                         children: [
                    //                           Row(
                    //                             children: [
                    //                               Expanded(
                    //                                 child: Text(
                    //                                   'Taj Hotel',
                    //                                   style: TextStyle(
                    //                                     color: Colors.white70,
                    //                                     fontWeight: FontWeight.bold,
                    //                                     fontSize: 18,
                    //                                   ),
                    //                                   overflow: TextOverflow.ellipsis,
                    //                                 ),
                    //                               ),
                    //                               Padding(
                    //                                 padding: const EdgeInsets.fromLTRB(6, 0, 0, 0),
                    //                                 child: Row(
                    //                                   children: [
                    //                                     Icon(
                    //                                       Icons.star_outlined,
                    //                                       size: 12,
                    //                                       color: Colors.cyan.shade500,
                    //                                     ),
                    //                                     Icon(
                    //                                       Icons.star_outlined,
                    //                                       size: 12,
                    //                                       color: Colors.cyan.shade500,
                    //                                     ),
                    //                                     Icon(
                    //                                       Icons.star_outlined,
                    //                                       size: 12,
                    //                                       color: Colors.cyan.shade500,
                    //                                     ),
                    //                                     Icon(
                    //                                       Icons.star_outlined,
                    //                                       size: 12,
                    //                                       color: Colors.cyan.shade500,
                    //                                     ),
                    //                                     Icon(
                    //                                       Icons.star_outlined,
                    //                                       size: 12,
                    //                                       color: Colors.cyan.shade500,
                    //                                     ),
                    //                                   ],
                    //                                 ),
                    //                               ),
                    //                             ],
                    //                           ),
                    //                           Row(
                    //                             children: [
                    //                               Expanded(
                    //                                 child: Column(
                    //                                   crossAxisAlignment: CrossAxisAlignment.start,
                    //                                   children: [
                    //                                     Text(
                    //                                       'VEG . NON-VEG',
                    //                                       style: TextStyle(
                    //                                         color: Colors.white70,
                    //                                         fontWeight: FontWeight.bold,
                    //                                         fontSize: 12,
                    //                                       ),
                    //                                     ),
                    //                                     Text(
                    //                                       'Chinese, North Indian, South Indian',
                    //                                       style: TextStyle(
                    //                                         color: Colors.white70,
                    //                                         fontSize: 12,
                    //                                       ),
                    //                                     ),
                    //                                   ],
                    //                                 ),
                    //                               ),
                    //                               IconButton(
                    //                                 onPressed: () {},
                    //                                 icon: Icon(
                    //                                   Icons.favorite,
                    //                                   size: 24,
                    //                                   color: Colors.cyan.shade500,
                    //                                 ),
                    //                               )
                    //                             ],
                    //                           ),
                    //                         ],
                    //                       ),
                    //                     ),
                    //                   ),
                    //                 ],
                    //               ),
                    //
                    //
                    //               // Second Stack (similar to the first, omitted for brevity)
                    //
                    //               Stack(
                    //                 children: [
                    //                   Container(
                    //                     width: w * 0.4,
                    //                     child: ClipRRect(
                    //                       borderRadius: BorderRadius.circular(8),
                    //                       child: Image.asset('assets/dash_exp1.png'),
                    //                     ),
                    //                   ),
                    //                   Positioned(
                    //                     top: 6,
                    //                     right: 0,
                    //                     child: Icon(Icons.more_vert_rounded, color: Colors.white60),
                    //                   ),
                    //                   Positioned(
                    //                     bottom: 0,
                    //                     left: 0,
                    //                     right: 0,
                    //                     child: Padding(
                    //                       padding: const EdgeInsets.all(8.0),
                    //                       child: Column(
                    //                         crossAxisAlignment: CrossAxisAlignment.start,
                    //                         children: [
                    //                           Row(
                    //                             children: [
                    //                               Expanded(
                    //                                 child: Text(
                    //                                   'Taj Hotel',
                    //                                   style: TextStyle(
                    //                                     color: Colors.white70,
                    //                                     fontWeight: FontWeight.bold,
                    //                                     fontSize: 18,
                    //                                   ),
                    //                                   overflow: TextOverflow.ellipsis,
                    //                                 ),
                    //                               ),
                    //                               Padding(
                    //                                 padding: const EdgeInsets.fromLTRB(6, 0, 0, 0),
                    //                                 child: Row(
                    //                                   children: [
                    //                                     Icon(
                    //                                       Icons.star_outlined,
                    //                                       size: 12,
                    //                                       color: Colors.cyan.shade500,
                    //                                     ),
                    //                                     Icon(
                    //                                       Icons.star_outlined,
                    //                                       size: 12,
                    //                                       color: Colors.cyan.shade500,
                    //                                     ),
                    //                                     Icon(
                    //                                       Icons.star_outlined,
                    //                                       size: 12,
                    //                                       color: Colors.cyan.shade500,
                    //                                     ),
                    //                                     Icon(
                    //                                       Icons.star_outlined,
                    //                                       size: 12,
                    //                                       color: Colors.cyan.shade500,
                    //                                     ),
                    //                                     Icon(
                    //                                       Icons.star_outlined,
                    //                                       size: 12,
                    //                                       color: Colors.cyan.shade500,
                    //                                     ),
                    //                                   ],
                    //                                 ),
                    //                               ),
                    //                             ],
                    //                           ),
                    //                           Row(
                    //                             children: [
                    //                               Expanded(
                    //                                 child: Column(
                    //                                   crossAxisAlignment: CrossAxisAlignment.start,
                    //                                   children: [
                    //                                     Text(
                    //                                       'VEG . NON-VEG',
                    //                                       style: TextStyle(
                    //                                         color: Colors.white70,
                    //                                         fontWeight: FontWeight.bold,
                    //                                         fontSize: 12,
                    //                                       ),
                    //                                     ),
                    //                                     Text(
                    //                                       'Chinese, North Indian, South Indian',
                    //                                       style: TextStyle(
                    //                                         color: Colors.white70,
                    //                                         fontSize: 12,
                    //                                       ),
                    //                                     ),
                    //                                   ],
                    //                                 ),
                    //                               ),
                    //                               IconButton(
                    //                                 onPressed: () {},
                    //                                 icon: Icon(
                    //                                   Icons.favorite_border_outlined,
                    //                                   size: 24,
                    //                                   color: Colors.cyan.shade500,
                    //                                 ),
                    //                               )
                    //                             ],
                    //                           ),
                    //                         ],
                    //                       ),
                    //                     ),
                    //                   ),
                    //                 ],
                    //               ),
                    //
                    //
                    //             ],
                    //           ),
                    //
                    //           SizedBox(height: 20,),
                    //           Row(
                    //             crossAxisAlignment: CrossAxisAlignment.center,
                    //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //             children: [
                    //               // First Stack
                    //               Stack(
                    //                 children: [
                    //                   Container(
                    //                     width: w * 0.4,
                    //                     child: ClipRRect(
                    //                       borderRadius: BorderRadius.circular(8),
                    //                       child: Image.asset('assets/dash_exp1.png'),
                    //                     ),
                    //                   ),
                    //                   Positioned(
                    //                     top: 6,
                    //                     right: 0,
                    //                     child: Icon(Icons.more_vert_rounded, color: Colors.white60),
                    //                   ),
                    //                   Positioned(
                    //                     bottom: 0,
                    //                     left: 0,
                    //                     right: 0,
                    //                     child: Padding(
                    //                       padding: const EdgeInsets.all(8.0),
                    //                       child: Column(
                    //                         crossAxisAlignment: CrossAxisAlignment.start,
                    //                         children: [
                    //                           Row(
                    //                             children: [
                    //                               Expanded(
                    //                                 child: Text(
                    //                                   'Taj Hotel',
                    //                                   style: TextStyle(
                    //                                     color: Colors.white70,
                    //                                     fontWeight: FontWeight.bold,
                    //                                     fontSize: 18,
                    //                                   ),
                    //                                   overflow: TextOverflow.ellipsis,
                    //                                 ),
                    //                               ),
                    //                               Padding(
                    //                                 padding: const EdgeInsets.fromLTRB(6, 0, 0, 0),
                    //                                 child: Row(
                    //                                   children: [
                    //                                     Icon(
                    //                                       Icons.star_outlined,
                    //                                       size: 12,
                    //                                       color: Colors.cyan.shade500,
                    //                                     ),
                    //                                     Icon(
                    //                                       Icons.star_outlined,
                    //                                       size: 12,
                    //                                       color: Colors.cyan.shade500,
                    //                                     ),
                    //                                     Icon(
                    //                                       Icons.star_outlined,
                    //                                       size: 12,
                    //                                       color: Colors.cyan.shade500,
                    //                                     ),
                    //                                     Icon(
                    //                                       Icons.star_outlined,
                    //                                       size: 12,
                    //                                       color: Colors.cyan.shade500,
                    //                                     ),
                    //                                     Icon(
                    //                                       Icons.star_outlined,
                    //                                       size: 12,
                    //                                       color: Colors.cyan.shade500,
                    //                                     ),
                    //                                   ],
                    //                                 ),
                    //                               ),
                    //                             ],
                    //                           ),
                    //                           Row(
                    //                             children: [
                    //                               Expanded(
                    //                                 child: Column(
                    //                                   crossAxisAlignment: CrossAxisAlignment.start,
                    //                                   children: [
                    //                                     Text(
                    //                                       'VEG . NON-VEG',
                    //                                       style: TextStyle(
                    //                                         color: Colors.white70,
                    //                                         fontWeight: FontWeight.bold,
                    //                                         fontSize: 12,
                    //                                       ),
                    //                                     ),
                    //                                     Text(
                    //                                       'Chinese, North Indian, South Indian',
                    //                                       style: TextStyle(
                    //                                         color: Colors.white70,
                    //                                         fontSize: 12,
                    //                                       ),
                    //                                     ),
                    //                                   ],
                    //                                 ),
                    //                               ),
                    //                               IconButton(
                    //                                 onPressed: () {},
                    //                                 icon: Icon(
                    //                                   Icons.favorite_border_outlined,
                    //                                   size: 24,
                    //                                   color: Colors.cyan.shade500,
                    //                                 ),
                    //                               )
                    //                             ],
                    //                           ),
                    //                         ],
                    //                       ),
                    //                     ),
                    //                   ),
                    //                 ],
                    //               ),
                    //
                    //
                    //               // Second Stack (similar to the first, omitted for brevity)
                    //
                    //               Stack(
                    //                 children: [
                    //                   Container(
                    //                     width: w * 0.4,
                    //                     child: ClipRRect(
                    //                       borderRadius: BorderRadius.circular(8),
                    //                       child: Image.asset('assets/dash_exp1.png'),
                    //                     ),
                    //                   ),
                    //                   Positioned(
                    //                     top: 6,
                    //                     right: 0,
                    //                     child: Icon(Icons.more_vert_rounded, color: Colors.white60),
                    //                   ),
                    //                   Positioned(
                    //                     bottom: 0,
                    //                     left: 0,
                    //                     right: 0,
                    //                     child: Padding(
                    //                       padding: const EdgeInsets.all(8.0),
                    //                       child: Column(
                    //                         crossAxisAlignment: CrossAxisAlignment.start,
                    //                         children: [
                    //                           Row(
                    //                             children: [
                    //                               Expanded(
                    //                                 child: Text(
                    //                                   'Taj Hotel',
                    //                                   style: TextStyle(
                    //                                     color: Colors.white70,
                    //                                     fontWeight: FontWeight.bold,
                    //                                     fontSize: 18,
                    //                                   ),
                    //                                   overflow: TextOverflow.ellipsis,
                    //                                 ),
                    //                               ),
                    //                               Padding(
                    //                                 padding: const EdgeInsets.fromLTRB(6, 0, 0, 0),
                    //                                 child: Row(
                    //                                   children: [
                    //                                     Icon(
                    //                                       Icons.star_outlined,
                    //                                       size: 12,
                    //                                       color: Colors.cyan.shade500,
                    //                                     ),
                    //                                     Icon(
                    //                                       Icons.star_outlined,
                    //                                       size: 12,
                    //                                       color: Colors.cyan.shade500,
                    //                                     ),
                    //                                     Icon(
                    //                                       Icons.star_outlined,
                    //                                       size: 12,
                    //                                       color: Colors.cyan.shade500,
                    //                                     ),
                    //                                     Icon(
                    //                                       Icons.star_outlined,
                    //                                       size: 12,
                    //                                       color: Colors.cyan.shade500,
                    //                                     ),
                    //                                     Icon(
                    //                                       Icons.star_outlined,
                    //                                       size: 12,
                    //                                       color: Colors.cyan.shade500,
                    //                                     ),
                    //                                   ],
                    //                                 ),
                    //                               ),
                    //                             ],
                    //                           ),
                    //                           Row(
                    //                             children: [
                    //                               Expanded(
                    //                                 child: Column(
                    //                                   crossAxisAlignment: CrossAxisAlignment.start,
                    //                                   children: [
                    //                                     Text(
                    //                                       'VEG . NON-VEG',
                    //                                       style: TextStyle(
                    //                                         color: Colors.white70,
                    //                                         fontWeight: FontWeight.bold,
                    //                                         fontSize: 12,
                    //                                       ),
                    //                                     ),
                    //                                     Text(
                    //                                       'Chinese, North Indian, South Indian',
                    //                                       style: TextStyle(
                    //                                         color: Colors.white70,
                    //                                         fontSize: 12,
                    //                                       ),
                    //                                     ),
                    //                                   ],
                    //                                 ),
                    //                               ),
                    //                               IconButton(
                    //                                 onPressed: () {},
                    //                                 icon: Icon(
                    //                                   Icons.favorite_border_outlined,
                    //                                   size: 24,
                    //                                   color: Colors.cyan.shade500,
                    //                                 ),
                    //                               )
                    //                             ],
                    //                           ),
                    //                         ],
                    //                       ),
                    //                     ),
                    //                   ),
                    //                 ],
                    //               ),
                    //
                    //
                    //             ],
                    //           ),
                    //
                    //           SizedBox(height: 20,),
                    //           Row(
                    //             crossAxisAlignment: CrossAxisAlignment.center,
                    //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //             children: [
                    //               // First Stack
                    //               Stack(
                    //                 children: [
                    //                   Container(
                    //                     width: w * 0.4,
                    //                     child: ClipRRect(
                    //                       borderRadius: BorderRadius.circular(8),
                    //                       child: Image.asset('assets/dash_exp1.png'),
                    //                     ),
                    //                   ),
                    //                   Positioned(
                    //                     top: 6,
                    //                     right: 0,
                    //                     child: Icon(Icons.more_vert_rounded, color: Colors.white60),
                    //                   ),
                    //                   Positioned(
                    //                     bottom: 0,
                    //                     left: 0,
                    //                     right: 0,
                    //                     child: Padding(
                    //                       padding: const EdgeInsets.all(8.0),
                    //                       child: Column(
                    //                         crossAxisAlignment: CrossAxisAlignment.start,
                    //                         children: [
                    //                           Row(
                    //                             children: [
                    //                               Expanded(
                    //                                 child: Text(
                    //                                   'Taj Hotel',
                    //                                   style: TextStyle(
                    //                                     color: Colors.white70,
                    //                                     fontWeight: FontWeight.bold,
                    //                                     fontSize: 18,
                    //                                   ),
                    //                                   overflow: TextOverflow.ellipsis,
                    //                                 ),
                    //                               ),
                    //                               Padding(
                    //                                 padding: const EdgeInsets.fromLTRB(6, 0, 0, 0),
                    //                                 child: Row(
                    //                                   children: [
                    //                                     Icon(
                    //                                       Icons.star_outlined,
                    //                                       size: 12,
                    //                                       color: Colors.cyan.shade500,
                    //                                     ),
                    //                                     Icon(
                    //                                       Icons.star_outlined,
                    //                                       size: 12,
                    //                                       color: Colors.cyan.shade500,
                    //                                     ),
                    //                                     Icon(
                    //                                       Icons.star_outlined,
                    //                                       size: 12,
                    //                                       color: Colors.cyan.shade500,
                    //                                     ),
                    //                                     Icon(
                    //                                       Icons.star_outlined,
                    //                                       size: 12,
                    //                                       color: Colors.cyan.shade500,
                    //                                     ),
                    //                                     Icon(
                    //                                       Icons.star_outlined,
                    //                                       size: 12,
                    //                                       color: Colors.cyan.shade500,
                    //                                     ),
                    //                                   ],
                    //                                 ),
                    //                               ),
                    //                             ],
                    //                           ),
                    //                           Row(
                    //                             children: [
                    //                               Expanded(
                    //                                 child: Column(
                    //                                   crossAxisAlignment: CrossAxisAlignment.start,
                    //                                   children: [
                    //                                     Text(
                    //                                       'VEG . NON-VEG',
                    //                                       style: TextStyle(
                    //                                         color: Colors.white70,
                    //                                         fontWeight: FontWeight.bold,
                    //                                         fontSize: 12,
                    //                                       ),
                    //                                     ),
                    //                                     Text(
                    //                                       'Chinese, North Indian, South Indian',
                    //                                       style: TextStyle(
                    //                                         color: Colors.white70,
                    //                                         fontSize: 12,
                    //                                       ),
                    //                                     ),
                    //                                   ],
                    //                                 ),
                    //                               ),
                    //                               IconButton(
                    //                                 onPressed: () {},
                    //                                 icon: Icon(
                    //                                   Icons.favorite_border_outlined,
                    //                                   size: 24,
                    //                                   color: Colors.cyan.shade500,
                    //                                 ),
                    //                               )
                    //                             ],
                    //                           ),
                    //                         ],
                    //                       ),
                    //                     ),
                    //                   ),
                    //                 ],
                    //               ),
                    //
                    //
                    //               // Second Stack (similar to the first, omitted for brevity)
                    //
                    //               Stack(
                    //                 children: [
                    //                   Container(
                    //                     width: w * 0.4,
                    //                     child: ClipRRect(
                    //                       borderRadius: BorderRadius.circular(8),
                    //                       child: Image.asset('assets/dash_exp1.png'),
                    //                     ),
                    //                   ),
                    //                   Positioned(
                    //                     top: 6,
                    //                     right: 0,
                    //                     child: Icon(Icons.more_vert_rounded, color: Colors.white60),
                    //                   ),
                    //                   Positioned(
                    //                     bottom: 0,
                    //                     left: 0,
                    //                     right: 0,
                    //                     child: Padding(
                    //                       padding: const EdgeInsets.all(8.0),
                    //                       child: Column(
                    //                         crossAxisAlignment: CrossAxisAlignment.start,
                    //                         children: [
                    //                           Row(
                    //                             children: [
                    //                               Expanded(
                    //                                 child: Text(
                    //                                   'Taj Hotel',
                    //                                   style: TextStyle(
                    //                                     color: Colors.white70,
                    //                                     fontWeight: FontWeight.bold,
                    //                                     fontSize: 18,
                    //                                   ),
                    //                                   overflow: TextOverflow.ellipsis,
                    //                                 ),
                    //                               ),
                    //                               Padding(
                    //                                 padding: const EdgeInsets.fromLTRB(6, 0, 0, 0),
                    //                                 child: Row(
                    //                                   children: [
                    //                                     Icon(
                    //                                       Icons.star_outlined,
                    //                                       size: 12,
                    //                                       color: Colors.cyan.shade500,
                    //                                     ),
                    //                                     Icon(
                    //                                       Icons.star_outlined,
                    //                                       size: 12,
                    //                                       color: Colors.cyan.shade500,
                    //                                     ),
                    //                                     Icon(
                    //                                       Icons.star_outlined,
                    //                                       size: 12,
                    //                                       color: Colors.cyan.shade500,
                    //                                     ),
                    //                                     Icon(
                    //                                       Icons.star_outlined,
                    //                                       size: 12,
                    //                                       color: Colors.cyan.shade500,
                    //                                     ),
                    //                                     Icon(
                    //                                       Icons.star_outlined,
                    //                                       size: 12,
                    //                                       color: Colors.cyan.shade500,
                    //                                     ),
                    //                                   ],
                    //                                 ),
                    //                               ),
                    //                             ],
                    //                           ),
                    //                           Row(
                    //                             children: [
                    //                               Expanded(
                    //                                 child: Column(
                    //                                   crossAxisAlignment: CrossAxisAlignment.start,
                    //                                   children: [
                    //                                     Text(
                    //                                       'VEG . NON-VEG',
                    //                                       style: TextStyle(
                    //                                         color: Colors.white70,
                    //                                         fontWeight: FontWeight.bold,
                    //                                         fontSize: 12,
                    //                                       ),
                    //                                     ),
                    //                                     Text(
                    //                                       'Chinese, North Indian, South Indian',
                    //                                       style: TextStyle(
                    //                                         color: Colors.white70,
                    //                                         fontSize: 12,
                    //                                       ),
                    //                                     ),
                    //                                   ],
                    //                                 ),
                    //                               ),
                    //                               IconButton(
                    //                                 onPressed: () {},
                    //                                 icon: Icon(
                    //                                   Icons.favorite_border_outlined,
                    //                                   size: 24,
                    //                                   color: Colors.cyan.shade500,
                    //                                 ),
                    //                               )
                    //                             ],
                    //                           ),
                    //                         ],
                    //                       ),
                    //                     ),
                    //                   ),
                    //                 ],
                    //               ),
                    //
                    //
                    //             ],
                    //           ),
                    //         ],
                    //       ),
                    //     ),
                    //   ),
                    // )
                  ],
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
                              // setState(() {
                              //   DashBoard.bottomIndex=3;
                              // });
                             // Get.to(FoodHomePage());
                            },
                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                      width: w * 0.08,
                                      child: Image.asset('assets/bottom_icon1.png',
                                        // opacity: const AlwaysStoppedAnimation(0.5),
                                      )
                                  ),
                                 // Icon(Icons.home,color: bottomNav?Colors.white:Colors.white38,size: 30,),
                                  Text(
                                    'Food',
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

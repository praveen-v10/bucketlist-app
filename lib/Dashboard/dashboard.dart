import 'package:bucketlist/Dashboard/Food/food_home_page.dart';
import 'package:bucketlist/Dashboard/Grocery/grocery_home_page.dart';
import 'package:bucketlist/Dashboard/Meat/meat_home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  static String location='';
  static String postCode='';
  static int bottomIndex = 1;

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {

  @override
  void initState() {
    super.initState();

    setState(() {
      DashBoard.bottomIndex=1;
    });

    getCurrentLocation();


  }

  getCurrentLocation() async {
    setState(() {
      // defaultLoading = true;
    });
    try {
      LocationPermission permission = await Geolocator.requestPermission();

      if (permission == LocationPermission.denied) {
        return 'Location permission denied.';
      }

      if (permission == LocationPermission.deniedForever) {
        return 'Location permission permanently denied.';
      }

      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );

      List<Placemark> placemarks = await placemarkFromCoordinates(
        position.latitude,
        position.longitude,
      );
      Placemark placemark = placemarks.first;
      setState(() {

        DashBoard.location = placemark.locality.toString();
        DashBoard.postCode = placemark.postalCode.toString();
      });

      print(DashBoard.location.toString());
      print(DashBoard.postCode.toString());
    } catch (e) {
      return 'Error getting current location: $e';
    }
    setState(() {
      // defaultLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height:  MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFF9D7D7),
              Color(0xFFFFF3E0),
              Color(0xFFFFF7B1),
              Color(0xFFB8E2DE),
            ],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          child: Image.asset('assets/logo1.png',height: h * 0.15,),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                                  child: Container(
                                      width: w * 0.15,
                                      child: Image.asset('assets/dash_head1.png')),
                                ),
                                Text(
                                  'Start Your Order',
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 0, 30, 0),
                                  child: Container(
                                      width: w * 0.15,
                                      child: Image.asset('assets/dash_head2.png')),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: GestureDetector(
                                onTap: (){
                                  setState(() {
                                    DashBoard.bottomIndex=1;
                                  });
                                  Get.to(FoodHomePage());
                                },
                                child: GlassContainer(
                                  blur: 50,
                                  shadowStrength: 8,
                                  color: Colors.white.withOpacity(0.1),
                                  shadowColor: Colors.grey,
                                  border: Border.all(width: 0.5,
                                  color: Colors.white70),
                                  borderRadius: BorderRadius.circular(8),
                                  child:  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child:Stack(
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context).size.width,
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(8),
                                            child: Image.asset('assets/dash1.png'),
                                          ),
                                        ),
                                        Positioned.fill(
                                          child: Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Padding(
                                              padding: EdgeInsets.only(bottom: 8), // Adjust bottom padding as needed
                                              child: Text(
                                                'Food & Snacks',
                                                style: TextStyle(color: Colors.white70,fontSize: 20),
                                              ),
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
                              child: GestureDetector(
                                onTap: (){
                                  setState(() {
                                    DashBoard.bottomIndex=2;
                                  });
                                  Get.to(GroceryHomePage());
                                },
                                child: GlassContainer(
                                  blur: 50,
                                  shadowStrength: 8,
                                  color: Colors.white.withOpacity(0.1),
                                  shadowColor: Colors.grey,
                                  border: Border.all(width: 0.5,
                                      color: Colors.white70),
                                  borderRadius: BorderRadius.circular(8),
                                  child:  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child:Stack(
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context).size.width,
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(8),
                                            child: Image.asset('assets/dash2.png'),
                                          ),
                                        ),
                                        Positioned.fill(
                                          child: Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Padding(
                                              padding: EdgeInsets.only(bottom: 8), // Adjust bottom padding as needed
                                              child: Text(
                                                'Household Essentials',
                                                style: TextStyle(color: Colors.white70,fontSize: 20),
                                              ),
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
                              child: GestureDetector(
                                onTap: (){
                                  setState(() {
                                    DashBoard.bottomIndex=3;
                                  });
                                  Get.to(MeatHomePage());
                                },
                                child: GlassContainer(
                                  blur: 50,
                                  shadowStrength: 8,
                                  color: Colors.white.withOpacity(0.1),
                                  shadowColor: Colors.grey,
                                  border: Border.all(width: 0.5,
                                      color: Colors.white70),
                                  borderRadius: BorderRadius.circular(8),
                                  child:  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child:Stack(
                                      children: [
                                        Container(
                                          width: MediaQuery.of(context).size.width,
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(8),
                                            child: Image.asset('assets/dash3.png'),
                                          ),
                                        ),
                                        Positioned.fill(
                                          child: Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Padding(
                                              padding: EdgeInsets.only(bottom: 8), // Adjust bottom padding as needed
                                              child: Text(
                                                'Fresh Meat Market',
                                                style: TextStyle(color: Colors.white70,fontSize: 20),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),


                          ],
                        ),
                      ),
                      
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,

                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                                  child: Container(
                                      width: w * 0.15,
                                      child: Image.asset('assets/dash_head1.png')),
                                ),
                                Text(
                                  'Explore More',
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 0, 30, 0),
                                  child: Container(
                                      width: w * 0.15,
                                      child: Image.asset('assets/dash_head2.png')),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                GestureDetector(
                                  onTap: (){
                                    Get.to(FoodHomePage());
                                  },
                                  child: Stack(
                                    children: [
                                      Container(
                                        width: w * 0.4,

                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(8),
                                          child: Image.asset('assets/dash_exp1.png'),
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 4,
                                        left: 10,
                                        right: 0,
                                        child: Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'COMBO OFF',
                                                style: TextStyle(color: Colors.white70,fontWeight: FontWeight.bold,fontSize: 16),
                                              ),
                                              Text(
                                                'Up to 50%',
                                                style: TextStyle(color: Colors.white70,fontSize: 16),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                GestureDetector(
                                  onTap: (){
                                    Get.to(FoodHomePage());
                                  },
                                  child: Stack(
                                    children: [
                                      Container(
                                        width: w * 0.4,

                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(8),
                                          child: Image.asset('assets/dash_exp2.png'),
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 4,
                                        left: 10,
                                        right: 0,
                                        child: Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'COMBO OFF',
                                                style: TextStyle(color: Colors.white70,fontWeight: FontWeight.bold,fontSize: 16),
                                              ),
                                              Text(
                                                'Up to 10%',
                                                style: TextStyle(color: Colors.white70,fontSize: 16),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                onTap: (){
                                  Get.to(MeatHomePage());
                                },
                                child: Stack(
                                  children: [
                                    Container(
                                      width: w * 0.4,

                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: Image.asset('assets/dash_exp3.png'),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 4,
                                      left: 10,
                                      right: 0,
                                      child: Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'COMBO OFF',
                                              style: TextStyle(color: Colors.white70,fontWeight: FontWeight.bold,fontSize: 16),
                                            ),
                                            Text(
                                              'Up to 30%',
                                              style: TextStyle(color: Colors.white70,fontSize: 16),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              GestureDetector(
                                onTap: (){
                                  Get.to(GroceryHomePage());
                                },
                                child: Stack(
                                  children: [
                                    Container(
                                      width: w * 0.4,

                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: Image.asset('assets/dash_exp4.png'),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 4,
                                      left: 10,
                                      right: 0,
                                      child: Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'COMBO OFF',
                                              style: TextStyle(color: Colors.white70,fontWeight: FontWeight.bold,fontSize: 16),
                                            ),
                                            Text(
                                              'Up to 40%',
                                              style: TextStyle(color: Colors.white70,fontSize: 16),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                            ],
                          ),
                          SizedBox(height: 20,)
                        ],
                      )
                    ],
            ),
          ),
        ),
      ),
    );
  }
}

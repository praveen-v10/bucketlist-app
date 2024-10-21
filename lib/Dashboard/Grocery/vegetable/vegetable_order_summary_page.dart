import 'package:bucketlist/Dashboard/Food/food_payment_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';

import '../grocery_payment_page.dart';

class VegetableOrderSummaryPage extends StatefulWidget {
  const VegetableOrderSummaryPage({Key? key}) : super(key: key);

  @override
  State<VegetableOrderSummaryPage> createState() => _VegetableOrderSummaryPageState();
}

class _VegetableOrderSummaryPageState extends State<VegetableOrderSummaryPage> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
        resizeToAvoidBottomInset: true,
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
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back_rounded,
                            color: Colors.white60,
                            size: 28,
                          ),
                        ),
                        // SizedBox(
                        //   width: 20,
                        // ),
                        // Text(
                        //   'New Taj Hotel',
                        //   style: TextStyle(
                        //       fontSize: 20,
                        //       color: Colors.white60,
                        //       fontWeight: FontWeight.bold),
                        // )
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // Padding(
                            //   padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                            //   child: Container(
                            //       width: w * 0.15,
                            //       child: Image.asset('assets/head1.png')),
                            // ),
                            Text(
                              'Details',
                              style: TextStyle(
                                  color: Colors.white60,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            // Padding(
                            //   padding: const EdgeInsets.fromLTRB(0, 0, 30, 0),
                            //   child: Container(
                            //       width: w * 0.15,
                            //       child: Image.asset('assets/head2.png')),
                            // ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: GlassContainer(
                          width: MediaQuery.of(context).size.width,
                          blur: 50,
                          shadowStrength: 0,
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white.withOpacity(0.1),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(2, 10, 2, 10),
                            child: Stack(
                              children: [
                                Positioned(
                                    top: 0,
                                    right: 6,
                                    child: Icon(
                                      Icons.mode_edit_outline_outlined,
                                      color: Colors.blue,
                                      size: 22,
                                    )),
                                Column(
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              6, 0, 0, 0),
                                          child: Text(
                                            'Name',
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.white60),
                                          ),
                                        ),
                                        Container(
                                            width: w * 0.5,
                                            child: Text(
                                              'Hari Prasath',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.white60),
                                            )),
                                      ],
                                    ),
                                    Divider(
                                      thickness: 0.5,
                                      color: Colors.white24,
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              6, 0, 0, 0),
                                          child: Text(
                                            'Phone',
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.white60),
                                          ),
                                        ),
                                        Container(
                                            width: w * 0.5,
                                            child: Text(
                                              '8965215486',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.white60),
                                            )),
                                      ],
                                    ),
                                    Divider(
                                      thickness: 0.5,
                                      color: Colors.white24,
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              6, 0, 0, 0),
                                          child: Text(
                                            'Address',
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.white60),
                                          ),
                                        ),
                                        Container(
                                            width: w * 0.5,
                                            child: Text(
                                              '56WF+MJC, Savullupatti St, Vellalapatti, Tamil Nadu 635205',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.white60),
                                            )),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),

                  SizedBox(height: 10,),

                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // Padding(
                            //   padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                            //   child: Container(
                            //       width: w * 0.15,
                            //       child: Image.asset('assets/head1.png')),
                            // ),
                            Text(
                              'Orderd Items',
                              style: TextStyle(
                                  color: Colors.white60,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            // Padding(
                            //   padding: const EdgeInsets.fromLTRB(0, 0, 30, 0),
                            //   child: Container(
                            //       width: w * 0.15,
                            //       child: Image.asset('assets/head2.png')),
                            // ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: GlassContainer(
                          width: MediaQuery.of(context).size.width,
                          blur: 50,
                          shadowStrength: 0,
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white.withOpacity(0.1),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(2, 10, 2, 10),
                            child: Column(
                              children: [
                                Padding(
                                  padding:
                                  const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                        const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                        child: Container(
                                          // width: w * 0.5,
                                            child: Row(
                                              children: [
                                                // Image.asset('assets/non_veg.png',
                                                //     scale: 10),
                                                Padding(
                                                  padding: const EdgeInsets.symmetric(
                                                      horizontal: 6),
                                                  child: Text(
                                                    'Bitter Gourd',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: Colors.white60),
                                                  ),
                                                ),
                                              ],
                                            )),
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 0, 6, 0),
                                            child: Container(
                                              child: GlassContainer(
                                                  width: w * 0.22,
                                                  height: h * 0.038,
                                                  blur: 50,
                                                  // shadowColor: Colors.grey.withOpacity(0),
                                                  shadowStrength: 0,
                                                  color:
                                                  Colors.white.withOpacity(0),
                                                  borderRadius:
                                                  BorderRadius.circular(8),
                                                  child: Row(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                    mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                    children: [
                                                      Icon(
                                                        CupertinoIcons.minus,
                                                        color: Colors.white60,
                                                        size: 16,
                                                      ),
                                                      Text(
                                                        '2',
                                                        style: TextStyle(
                                                            color: Colors.white70,
                                                            fontWeight:
                                                            FontWeight.bold,
                                                            fontSize: 16),
                                                      ),
                                                      Icon(
                                                        Icons.add,
                                                        color: Colors.white60,
                                                        size: 16,
                                                      ),
                                                    ],
                                                  )),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10),
                                            child: Container(
                                              // width: w * 0.3,
                                                child: Text(
                                                  '₹ 240',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.white60),
                                                )),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Divider(
                                  thickness: 0.5,
                                  color: Colors.white24,
                                ),
                                Padding(
                                  padding:
                                  const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                        const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                        child: Container(
                                          // width: w * 0.5,
                                            child: Row(
                                              children: [
                                                // Image.asset('assets/veg.png',
                                                //     scale: 10),
                                                Padding(
                                                  padding: const EdgeInsets.symmetric(
                                                      horizontal: 6),
                                                  child: Text(
                                                    'Potato',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: Colors.white60),
                                                  ),
                                                ),
                                              ],
                                            )),
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                0, 0, 6, 0),
                                            child: Container(
                                              child: GlassContainer(
                                                  width: w * 0.22,
                                                  height: h * 0.038,
                                                  blur: 50,
                                                  shadowStrength: 0,
                                                  color:
                                                  Colors.white.withOpacity(0),
                                                  borderRadius:
                                                  BorderRadius.circular(8),
                                                  child: Row(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                    mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                    children: [
                                                      Icon(
                                                        CupertinoIcons.minus,
                                                        color: Colors.white60,
                                                        size: 16,
                                                      ),
                                                      Text(
                                                        '1',
                                                        style: TextStyle(
                                                            color: Colors.white70,
                                                            fontWeight:
                                                            FontWeight.bold,
                                                            fontSize: 16),
                                                      ),
                                                      Icon(
                                                        Icons.add,
                                                        color: Colors.white60,
                                                        size: 16,
                                                      ),
                                                    ],
                                                  )),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10),
                                            child: Container(
                                              // width: w * 0.3,
                                                child: Text(
                                                  '₹ 160',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.white60),
                                                )),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10,),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // Padding(
                            //   padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                            //   child: Container(
                            //       width: w * 0.15,
                            //       child: Image.asset('assets/head1.png')),
                            // ),
                            Text(
                              'Bill & Summery',
                              style: TextStyle(
                                  color: Colors.white60,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            // Padding(
                            //   padding: const EdgeInsets.fromLTRB(0, 0, 30, 0),
                            //   child: Container(
                            //       width: w * 0.15,
                            //       child: Image.asset('assets/head2.png')),
                            // ),
                          ],
                        ),
                      ),

                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: GlassContainer(
                          width: MediaQuery.of(context).size.width,
                          blur: 50,
                          shadowStrength: 0,
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white.withOpacity(0.1),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(2, 10, 2, 10),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                        const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                        child: Text(
                                          '2 Items Price',
                                          style: TextStyle(
                                              fontSize: 16, color: Colors.white60),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                        child: Text(
                                          '₹ 400',
                                          style: TextStyle(
                                              fontSize: 16, color: Colors.white60),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Divider(
                                  thickness: 0.5,
                                  color: Colors.white24,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                        const EdgeInsets.fromLTRB(6, 0, 0, 0),
                                        child: Text(
                                          'Delivery Charges',
                                          style: TextStyle(
                                              fontSize: 16, color: Colors.white60),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                        child: Text(
                                          '₹ 60',
                                          style: TextStyle(
                                              fontSize: 16, color: Colors.white60),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                Divider(
                                  thickness: 0.5,
                                  color: Colors.white24,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                        const EdgeInsets.fromLTRB(6, 0, 0, 0),
                                        child: Text(
                                          'GST',
                                          style: TextStyle(
                                              fontSize: 16, color: Colors.white60),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                        child: Text(
                                          '₹ 16',
                                          style: TextStyle(
                                              fontSize: 16, color: Colors.white60),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                Divider(
                                  thickness: 0.5,
                                  color: Colors.white24,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:
                                        const EdgeInsets.fromLTRB(6, 0, 0, 0),
                                        child: Text(
                                          'Total',
                                          style: TextStyle(
                                              fontSize: 16, color: Colors.white60,fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                        child: Text(
                                          '₹ 476',
                                          style: TextStyle(
                                              fontSize: 18, color: Colors.white60,fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),


                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),

                  SizedBox(height: 10,),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // Padding(
                            //   padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                            //   child: Container(
                            //       width: w * 0.15,
                            //       child: Image.asset('assets/head1.png')),
                            // ),
                            Text(
                              'Coupon & Benifits',
                              style: TextStyle(
                                  color: Colors.white60,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            // Padding(
                            //   padding: const EdgeInsets.fromLTRB(0, 0, 30, 0),
                            //   child: Container(
                            //       width: w * 0.15,
                            //       child: Image.asset('assets/head2.png')),
                            // ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(12, 10, 12, 0),
                        child: TextField(
                          onChanged: (value) {
                            setState(() {});
                            // print(value.isEmail);
                          },
                          style: TextStyle(fontSize: 16, color: Colors.white60),
                          decoration: InputDecoration(
                              suffixIcon:    IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.local_offer_outlined,
                                  color: Colors.white60,
                                ),
                              ),
                              filled: true,
                              fillColor: Colors.white12,
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(8)),
                              contentPadding:
                              EdgeInsets.symmetric(vertical: 14, horizontal: 20),
                              hintText: 'Coupon Code',
                              hintStyle: TextStyle(color: Colors.white38,fontSize: 16)),
                        ),
                      ),


                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'CANCELLATION POLICY :',
                            style: TextStyle(
                                color: Colors.white60,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),

                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                            child: Text(
                              'Help us minimize waste. 100% cancellation fee applies after order placement.',
                              style: TextStyle(
                                color: Colors.white60,
                                fontSize: 14,
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
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
          child: Container(
            child: SingleChildScrollView(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GlassContainer(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.06,
                    blur: 50,
                    shadowStrength: 0,
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white.withOpacity(0.1),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '₹ 476',
                                  style: TextStyle(
                                      color: Colors.white54,
                                      fontWeight:
                                      FontWeight.bold,
                                      fontSize: 18),
                                ),
                                Text(
                                  'View Detailed Bill',
                                  style: TextStyle(
                                      color: Colors.white54,
                                      fontWeight:
                                      FontWeight.bold,
                                      fontSize: 12),
                                ),

                              ],
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.blue.shade400,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8), // <-- Radius
                                ),
                              ),
                              onPressed: (){
                                Get.to(GroceryPaymentPage());
                              },
                              child:  Text(
                                'Proceed to Pay',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight:
                                    FontWeight.bold,
                                    fontSize: 18),
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

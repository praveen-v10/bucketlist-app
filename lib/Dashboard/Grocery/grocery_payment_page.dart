import 'package:bucketlist/Dashboard/Grocery/grocery_home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';

import '../../Widget/order_confirm.dart';
import '../Food/food_home_page.dart';

class GroceryPaymentPage extends StatefulWidget {
  const GroceryPaymentPage({Key? key}) : super(key: key);

  @override
  State<GroceryPaymentPage> createState() => _GroceryPaymentPageState();
}

class _GroceryPaymentPageState extends State<GroceryPaymentPage> {

  bool orderConfirm = false;

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return orderConfirm?const OrderConfirmed():Scaffold(
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
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Payment Method',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white60,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),

                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
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
                              'Delivery Details',
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

                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: GlassContainer(
                          width: MediaQuery.of(context).size.width,
                          blur: 50,
                          shadowStrength: 0,
                          height: h * 0.08,
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white.withOpacity(0.1),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(

                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                                  child: Container(
                                    height:  h * 0.08,
                                    child: Image.asset('assets/food_pay_del.png',),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                                      child: Container(

                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              'Bucket List',
                                              style: TextStyle(
                                                  color: Colors.white60,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
                                            ),

                                            Text(
                                              '${' | '} Delivery in: 50-55 min',
                                              style: TextStyle(
                                                  color: Colors.white38,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold),
                                            ),

                                          ],
                                        ),
                                      ),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                      child: Container(

                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              'Home ',
                                              style: TextStyle(
                                                  color: Colors.white60,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
                                            ),

                                            Text(
                                              '${' | '} 56WF+MJC, Savullu...',
                                              style: TextStyle(
                                                  color: Colors.white38,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold),
                                            ),

                                          ],
                                        ),
                                      ),
                                    ),

                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
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
                              'Recommended for you',
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

                      SizedBox(height: 4,),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: GlassContainer(
                          width: MediaQuery.of(context).size.width,
                          blur: 50,
                          shadowStrength: 0,

                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white.withOpacity(0.1),
                          child: Padding(
                            padding:
                            const EdgeInsets.fromLTRB(4, 10, 4, 10),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 4),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Row(
                                          children: [
                                            Image.asset('assets/g_pay.png',height: h * 0.03,),
                                            SizedBox(width: 10,),
                                            Text(
                                              'Google Pay',
                                              style: TextStyle(
                                                  color: Colors.white60,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),

                                      Container(
                                        child: Icon(Icons.circle_outlined,color: Colors.white60,size: 20,),
                                      )
                                    ],
                                  ),
                                ),

                                Divider(
                                  thickness: 0.5,
                                  color: Colors.white24,
                                ),


                                Padding(
                                  padding: const EdgeInsets.fromLTRB(10,4, 10, 0),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Row(
                                          children: [
                                            Image.asset('assets/ph_pay.png',height: h * 0.03,),
                                            SizedBox(width: 10,),
                                            Text(
                                              'Phone Pay',
                                              style: TextStyle(
                                                  color: Colors.white60,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),

                                      Container(
                                        child: Icon(Icons.circle_outlined,color: Colors.white60,size: 20,),
                                      )
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),
                      ),


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
                              'Pay on Delivery',
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

                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: GlassContainer(
                          width: MediaQuery.of(context).size.width,
                          blur: 50,
                          shadowStrength: 0,

                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white.withOpacity(0.1),
                          child: Padding(
                            padding:
                            const EdgeInsets.fromLTRB(4, 10, 4, 10),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 4),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Row(
                                          children: [
                                            Image.asset('assets/cash_pay.png',height: h * 0.03,),
                                            SizedBox(width: 20,),
                                            Text(
                                              'Cash on Delivery',
                                              style: TextStyle(
                                                  color: Colors.white60,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),

                                      Container(
                                        child: Icon(CupertinoIcons.checkmark_circle_fill,color: Colors.white60,size: 20,),
                                      )
                                    ],
                                  ),
                                ),

                                Divider(
                                  thickness: 0.5,
                                  color: Colors.white24,
                                ),


                                Padding(
                                  padding: const EdgeInsets.fromLTRB(10,4, 10, 0),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Row(
                                          children: [
                                            Image.asset('assets/card_pay1.png',height: h * 0.03,),
                                            SizedBox(width: 10,),
                                            Text(
                                              'Credit Card',
                                              style: TextStyle(
                                                  color: Colors.white60,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),

                                      Container(
                                        child: Icon(Icons.circle_outlined,color: Colors.white60,size: 20,),
                                      )
                                    ],
                                  ),
                                ),

                                Divider(
                                  thickness: 0.5,
                                  color: Colors.white24,
                                ),


                                Padding(
                                  padding: const EdgeInsets.fromLTRB(10,4, 10, 0),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Row(
                                          children: [
                                            Image.asset('assets/card_pay2.png',height: h * 0.03,),
                                            SizedBox(width: 10,),
                                            Text(
                                              'Debit Card',
                                              style: TextStyle(
                                                  color: Colors.white60,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),

                                      Container(
                                        child: Icon(Icons.circle_outlined,color: Colors.white60,size: 20,),
                                      )
                                    ],
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),
                      ),


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
                              'Wallets',
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

                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: GlassContainer(
                          width: MediaQuery.of(context).size.width,
                          blur: 50,
                          shadowStrength: 0,

                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white.withOpacity(0.1),
                          child: Padding(
                            padding:
                            const EdgeInsets.fromLTRB(4, 10, 4, 10),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 4),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Row(
                                          children: [
                                            Image.asset('assets/g_pay.png',height: h * 0.03,),
                                            SizedBox(width: 10,),
                                            Text(
                                              'Google Pay Wallet',
                                              style: TextStyle(
                                                  color: Colors.white60,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),

                                      Container(
                                        child: Icon(Icons.circle_outlined,color: Colors.white60,size: 20,),
                                      )
                                    ],
                                  ),
                                ),

                                Divider(
                                  thickness: 0.5,
                                  color: Colors.white24,
                                ),


                                Padding(
                                  padding: const EdgeInsets.fromLTRB(10,4, 10, 0),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Row(
                                          children: [
                                            Image.asset('assets/ph_pay.png',height: h * 0.03,),
                                            SizedBox(width: 10,),
                                            Text(
                                              'Phone Pay Wallet',
                                              style: TextStyle(
                                                  color: Colors.white60,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),

                                      Container(
                                        child: Icon(Icons.circle_outlined,color: Colors.white60,size: 20,),
                                      )
                                    ],
                                  ),
                                ),

                              ],
                            ),
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
                              onPressed: () async {
                                setState(() {
                                  orderConfirm = true;
                                });
                                await Future.delayed(const Duration(milliseconds: 2200));
                                Get.offAll(GroceryHomePage());
                              },
                              child:  Text(
                                'Pay Now',
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

import 'package:bucketlist/Widget/order_tracking3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';
import 'package:lottie/lottie.dart';

class OrderTracking2 extends StatefulWidget {
  const OrderTracking2({Key? key}) : super(key: key);

  @override
  State<OrderTracking2> createState() => _OrderTracking2State();
}

class _OrderTracking2State extends State<OrderTracking2> {

  bool orderDetails = false;


  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(

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
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        // Expanded(
                        //   child: Padding(
                        //     padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        //     child: TextField(
                        //       onChanged: (value) {
                        //         setState(() {});
                        //       },
                        //       style:
                        //           TextStyle(fontSize: 16, color: Colors.white60),
                        //       decoration: InputDecoration(
                        //           suffixIcon: Container(
                        //             child: IconButton(
                        //               onPressed: () {},
                        //               icon: Icon(
                        //                 Icons.search,
                        //                 color: Colors.white60,
                        //               ),
                        //             ),
                        //           ),
                        //           filled: true,
                        //           fillColor: Colors.white12,
                        //           border: OutlineInputBorder(
                        //               borderSide: BorderSide.none,
                        //               borderRadius: BorderRadius.circular(8)),
                        //           contentPadding: EdgeInsets.symmetric(
                        //               vertical: 10,
                        //               horizontal:
                        //                   10), // Adjust vertical padding here
                        //           hintText: 'Search',
                        //           hintStyle: TextStyle(color: Colors.white38)),
                        //     ),
                        //   ),
                        // ),
                        IconButton(
                          onPressed: () {
                            Get.to(OrderTracking3());
                          },
                          icon: Icon(
                            Icons.arrow_forward_sharp,
                            color: Colors.white60,
                            size: 28,
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 30,),
                  SizedBox(
                    width: w * 0.8,
                    child: Lottie.asset('assets/lottie/order_ontheway.json'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Text(
                          'Pickup Confirmed',
                          style: TextStyle(
                              color: Colors.white60,
                              fontSize: 28,
                              fontWeight: FontWeight.bold),
                        ),

                        Text(
                          'In the hands of our delivery hero, on the way to you',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white60,

                            fontSize: 20,
                          ),
                        ),

                      ],
                    ),
                  ),

                  SizedBox(height: 40,),

                  orderDetails?Padding(
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
                  ):SizedBox()

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
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        orderDetails=true;
                      });
                    },
                    child: GlassContainer(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: MediaQuery.of(context).size.height * 0.05,
                      blur: 50,
                      shadowStrength: 0,
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white.withOpacity(0.1),
                      child:   Center(
                        child: Text(
                          'Order Details',
                          style: TextStyle(
                              color: Colors.white54,
                              fontWeight:
                              FontWeight.bold,
                              fontSize: 18),
                        ),
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

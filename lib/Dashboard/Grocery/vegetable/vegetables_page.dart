import 'package:bucketlist/Dashboard/Grocery/grocery_order_summary_page.dart';
import 'package:bucketlist/Dashboard/Grocery/vegetable/vegetable_order_summary_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';

import '../../Food/food_order_summary_page.dart';

class VegetablesPage extends StatefulWidget {
  const VegetablesPage({Key? key}) : super(key: key);

  @override
  State<VegetablesPage> createState() => _VegetablesPageState();
}

class _VegetablesPageState extends State<VegetablesPage> {

  bool add1 = false;
  bool add2 = false;
  bool add3 = false;
  bool add4 = false;
  bool add5 = false;


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
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Container(
                            child: Image.asset(
                              'assets/profile.png',
                              width: w * 0.08,
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
                  padding: const EdgeInsets.all(10.0),
                  child: GlassContainer(
                    width: MediaQuery.of(context).size.width,
                    blur: 50,
                    borderRadius: BorderRadius.circular(8),
                    shadowStrength: 0,
                    color: Colors.white.withOpacity(0.1),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: w * 0.3,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset('assets/grocery_veg1.png'),
                                ),
                              ),
                              Padding(
                                padding:
                                const EdgeInsets.fromLTRB(0, 0, 10, 0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment
                                      .start, // Added alignment for the column
                                  crossAxisAlignment: CrossAxisAlignment
                                      .end, // Optional: Align children horizontally

                                  children: [

                                    Text(
                                      'Potato',

                                      style: TextStyle(
                                          color: Colors.white70,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22),
                                    ),
                                    SizedBox(height: 2,),
                                    Text(
                                      '₹ 40 / Kg',
                                      style: TextStyle(
                                          color: Colors.white70,

                                          fontSize: 16),
                                    ),
                                    SizedBox(height: 4,),
                                    Text(
                                      'Min - 500g',
                                      style: TextStyle(
                                          color: Colors.white38,

                                          fontSize: 12),
                                    ),


                                    add1
                                        ? Padding(
                                      padding:
                                      const EdgeInsets.fromLTRB(
                                          0, 12, 0, 0),
                                      child: GlassContainer(
                                          width: w * 0.28,
                                          height: h * 0.038,
                                          blur: 50,
                                          shadowStrength: 0,
                                          color: Colors.white
                                              .withOpacity(0.2),
                                          borderRadius:
                                          BorderRadius.circular(8),
                                          child: Row(
                                            crossAxisAlignment:
                                            CrossAxisAlignment
                                                .center,
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
                                                    color:
                                                    Colors.white70,
                                                    fontWeight:
                                                    FontWeight.bold,
                                                    fontSize: 18),
                                              ),
                                              Icon(
                                                Icons.add,
                                                color: Colors.white60,
                                                size: 16,
                                              ),
                                            ],
                                          )),
                                    )
                                        : Padding(
                                      padding:
                                      const EdgeInsets.fromLTRB(
                                          0, 12, 0, 0),
                                      child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            add1= true;
                                          });
                                        },
                                        child: GlassContainer(
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
                                              'Add',
                                              style: TextStyle(
                                                  color: Colors.white70,
                                                  fontWeight:
                                                  FontWeight.bold,
                                                  fontSize: 18),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),

                        Divider(
                          thickness: 0.5,
                          color: Colors.white24,
                        ),

                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: w * 0.3,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset('assets/grocery_veg2.png'),
                                ),
                              ),
                              Padding(
                                padding:
                                const EdgeInsets.fromLTRB(0, 0, 10, 0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment
                                      .start, // Added alignment for the column
                                  crossAxisAlignment: CrossAxisAlignment
                                      .end, // Optional: Align children horizontally

                                  children: [

                                    Text(
                                      'Bitter Gourd',

                                      style: TextStyle(
                                          color: Colors.white70,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22),
                                    ),
                                    SizedBox(height: 2,),
                                    Text(
                                      '₹ 30 / Kg',
                                      style: TextStyle(
                                          color: Colors.white70,

                                          fontSize: 16),
                                    ),
                                    SizedBox(height: 4,),
                                    Text(
                                      'Min - 500g',
                                      style: TextStyle(
                                          color: Colors.white38,

                                          fontSize: 12),
                                    ),


                                    add2
                                        ? Padding(
                                      padding:
                                      const EdgeInsets.fromLTRB(
                                          0, 12, 0, 0),
                                      child: GlassContainer(
                                          width: w * 0.28,
                                          height: h * 0.038,
                                          blur: 50,
                                          shadowStrength: 0,
                                          color: Colors.white
                                              .withOpacity(0.2),
                                          borderRadius:
                                          BorderRadius.circular(8),
                                          child: Row(
                                            crossAxisAlignment:
                                            CrossAxisAlignment
                                                .center,
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
                                                    color:
                                                    Colors.white70,
                                                    fontWeight:
                                                    FontWeight.bold,
                                                    fontSize: 18),
                                              ),
                                              Icon(
                                                Icons.add,
                                                color: Colors.white60,
                                                size: 16,
                                              ),
                                            ],
                                          )),
                                    )
                                        : Padding(
                                      padding:
                                      const EdgeInsets.fromLTRB(
                                          0, 12, 0, 0),
                                      child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            add2= true;
                                          });
                                        },
                                        child: GlassContainer(
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
                                              'Add',
                                              style: TextStyle(
                                                  color: Colors.white70,
                                                  fontWeight:
                                                  FontWeight.bold,
                                                  fontSize: 18),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),

                        Divider(
                          thickness: 0.5,
                          color: Colors.white24,
                        ),

                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: w * 0.3,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset('assets/grocery_veg3.png'),
                                ),
                              ),
                              Padding(
                                padding:
                                const EdgeInsets.fromLTRB(0, 0, 10, 0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment
                                      .start, // Added alignment for the column
                                  crossAxisAlignment: CrossAxisAlignment
                                      .end, // Optional: Align children horizontally

                                  children: [

                                    Text(
                                      'Capsicum',

                                      style: TextStyle(
                                          color: Colors.white70,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22),
                                    ),
                                    SizedBox(height: 2,),
                                    Text(
                                      '₹ 38 / Kg',
                                      style: TextStyle(
                                          color: Colors.white70,

                                          fontSize: 16),
                                    ),
                                    SizedBox(height: 4,),
                                    Text(
                                      'Min - 500g',
                                      style: TextStyle(
                                          color: Colors.white38,

                                          fontSize: 12),
                                    ),


                                    add3
                                        ? Padding(
                                      padding:
                                      const EdgeInsets.fromLTRB(
                                          0, 12, 0, 0),
                                      child: GlassContainer(
                                          width: w * 0.28,
                                          height: h * 0.038,
                                          blur: 50,
                                          shadowStrength: 0,
                                          color: Colors.white
                                              .withOpacity(0.2),
                                          borderRadius:
                                          BorderRadius.circular(8),
                                          child: Row(
                                            crossAxisAlignment:
                                            CrossAxisAlignment
                                                .center,
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
                                                    color:
                                                    Colors.white70,
                                                    fontWeight:
                                                    FontWeight.bold,
                                                    fontSize: 18),
                                              ),
                                              Icon(
                                                Icons.add,
                                                color: Colors.white60,
                                                size: 16,
                                              ),
                                            ],
                                          )),
                                    )
                                        : Padding(
                                      padding:
                                      const EdgeInsets.fromLTRB(
                                          0, 12, 0, 0),
                                      child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            add3= true;
                                          });
                                        },
                                        child: GlassContainer(
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
                                              'Add',
                                              style: TextStyle(
                                                  color: Colors.white70,
                                                  fontWeight:
                                                  FontWeight.bold,
                                                  fontSize: 18),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),

                        Divider(
                          thickness: 0.5,
                          color: Colors.white24,
                        ),


                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: w * 0.3,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset('assets/grocery_veg4.png'),
                                ),
                              ),
                              Padding(
                                padding:
                                const EdgeInsets.fromLTRB(0, 0, 10, 0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment
                                      .start, // Added alignment for the column
                                  crossAxisAlignment: CrossAxisAlignment
                                      .end, // Optional: Align children horizontally

                                  children: [

                                    Text(
                                      'Ladies Finger',

                                      style: TextStyle(
                                          color: Colors.white70,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22),
                                    ),
                                    SizedBox(height: 2,),
                                    Text(
                                      '₹ 24 / Kg',
                                      style: TextStyle(
                                          color: Colors.white70,

                                          fontSize: 16),
                                    ),
                                    SizedBox(height: 4,),
                                    Text(
                                      'Min - 500g',
                                      style: TextStyle(
                                          color: Colors.white38,

                                          fontSize: 12),
                                    ),


                                    add4
                                        ? Padding(
                                      padding:
                                      const EdgeInsets.fromLTRB(
                                          0, 12, 0, 0),
                                      child: GlassContainer(
                                          width: w * 0.28,
                                          height: h * 0.038,
                                          blur: 50,
                                          shadowStrength: 0,
                                          color: Colors.white
                                              .withOpacity(0.2),
                                          borderRadius:
                                          BorderRadius.circular(8),
                                          child: Row(
                                            crossAxisAlignment:
                                            CrossAxisAlignment
                                                .center,
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
                                                    color:
                                                    Colors.white70,
                                                    fontWeight:
                                                    FontWeight.bold,
                                                    fontSize: 18),
                                              ),
                                              Icon(
                                                Icons.add,
                                                color: Colors.white60,
                                                size: 16,
                                              ),
                                            ],
                                          )),
                                    )
                                        : Padding(
                                      padding:
                                      const EdgeInsets.fromLTRB(
                                          0, 12, 0, 0),
                                      child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            add4= true;
                                          });
                                        },
                                        child: GlassContainer(
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
                                              'Add',
                                              style: TextStyle(
                                                  color: Colors.white70,
                                                  fontWeight:
                                                  FontWeight.bold,
                                                  fontSize: 18),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),

                        Divider(
                          thickness: 0.5,
                          color: Colors.white24,
                        ),


                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: w * 0.3,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset('assets/grocery_veg5.png'),
                                ),
                              ),
                              Padding(
                                padding:
                                const EdgeInsets.fromLTRB(0, 0, 10, 0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment
                                      .start, // Added alignment for the column
                                  crossAxisAlignment: CrossAxisAlignment
                                      .end, // Optional: Align children horizontally

                                  children: [

                                    Text(
                                      'Green Chilli',

                                      style: TextStyle(
                                          color: Colors.white70,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22),
                                    ),
                                    SizedBox(height: 2,),
                                    Text(
                                      '₹ 40 / Kg',
                                      style: TextStyle(
                                          color: Colors.white70,

                                          fontSize: 16),
                                    ),
                                    SizedBox(height: 4,),
                                    Text(
                                      'Min - 500g',
                                      style: TextStyle(
                                          color: Colors.white38,

                                          fontSize: 12),
                                    ),


                                    add5
                                        ? Padding(
                                      padding:
                                      const EdgeInsets.fromLTRB(
                                          0, 12, 0, 0),
                                      child: GlassContainer(
                                          width: w * 0.28,
                                          height: h * 0.038,
                                          blur: 50,
                                          shadowStrength: 0,
                                          color: Colors.white
                                              .withOpacity(0.2),
                                          borderRadius:
                                          BorderRadius.circular(8),
                                          child: Row(
                                            crossAxisAlignment:
                                            CrossAxisAlignment
                                                .center,
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
                                                    color:
                                                    Colors.white70,
                                                    fontWeight:
                                                    FontWeight.bold,
                                                    fontSize: 18),
                                              ),
                                              Icon(
                                                Icons.add,
                                                color: Colors.white60,
                                                size: 16,
                                              ),
                                            ],
                                          )),
                                    )
                                        : Padding(
                                      padding:
                                      const EdgeInsets.fromLTRB(
                                          0, 12, 0, 0),
                                      child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            add5= true;
                                          });
                                        },
                                        child: GlassContainer(
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
                                              'Add',
                                              style: TextStyle(
                                                  color: Colors.white70,
                                                  fontWeight:
                                                  FontWeight.bold,
                                                  fontSize: 18),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
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
        bottomNavigationBar:add1||add2||add3||add4||add5 ? Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
          child: Container(
            child: SingleChildScrollView(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GlassContainer(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * 0.05,
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
                            child: Text(
                              '1 Item Added',
                              style: TextStyle(
                                  color: Colors.white54,
                                  fontWeight:
                                  FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ),

                          GestureDetector(
                            onTap: (){
                              Get.to(const VegetableOrderSummaryPage());
                            },
                            child: Container(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'View Cart',
                                    style: TextStyle(
                                        color: Colors.white54,
                                        fontWeight:
                                        FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                  SizedBox(width: 10,),
                                  Icon(
                                    Icons.arrow_forward_sharp,
                                    color: Colors.white54,
                                    size: 16,
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
        ) : null


    );
  }
}

import 'package:bucketlist/Dashboard/Food/food_order_summary_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';

class FoodMenuPage extends StatefulWidget {
  const FoodMenuPage({Key? key}) : super(key: key);

  @override
  State<FoodMenuPage> createState() => _FoodMenuPageState();
}

class _FoodMenuPageState extends State<FoodMenuPage> {
  bool add1 = false;
  bool add2 = false;
  bool add3 = false;
  bool add4 = false;

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
                  padding: const EdgeInsets.all(10.0),
                  child: Stack(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            'assets/food_hotel.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        left: 0,
                        right: 0,
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'TAj Hotel',
                                style: TextStyle(
                                    color: Colors.white70,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              Text(
                                'Chinese . South indian . north indian',
                                style: TextStyle(
                                    color: Colors.white70, fontSize: 16),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.green.shade500,
                                        borderRadius: BorderRadius.circular(4)),
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(4, 2, 4, 2),
                                      child: Row(
                                        children: [
                                          Text(
                                            '4.5',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                          Icon(
                                            Icons.star_outline,
                                            color: Colors.white,
                                            size: 16,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    '6k+ Ratings',
                                    style: TextStyle(
                                        color: Colors.white60, fontSize: 14),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
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
                  padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
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
                                border:
                                    Border.all(width: 1, color: Colors.white60),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 6),
                                      child: Text(
                                        'Filter',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white60),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 6),
                                      child: Icon(Icons.filter_alt_outlined,
                                          color: Colors.white60, size: 14),
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
                                border:
                                    Border.all(width: 1, color: Colors.white60),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 6),
                                      child: Image.asset(
                                        'assets/veg.png',
                                        scale: 8,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 6),
                                      child: Text(
                                        'Veg',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white60),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1, color: Colors.white60),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 6),
                                      child: Image.asset(
                                        'assets/non_veg.png',
                                        scale: 8,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 6),
                                      child: Text(
                                        'Non-Veg',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white60),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1, color: Colors.white60),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 6),
                                      child: Text(
                                        'Top Selling',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.white60),
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
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
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
                                child: Image.asset('assets/head1.png')),
                          ),
                          Text(
                            'Recommended',
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
                    ),



                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                      child: GlassContainer(
                          width: MediaQuery.of(context).size.width,
                          blur: 50,
                          borderRadius: BorderRadius.circular(8),
                          shadowStrength: 0,
                          color: Colors.white.withOpacity(0.1),
                          //shadowColor: Colors.grey,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 14),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: w * 0.38,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.asset('assets/food_menu1.png'),
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
                                      Row(
                                        children: [
                                          Text(
                                            'Best Selling',
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.white60),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10),
                                            child: Image.asset(
                                                'assets/non_veg.png',
                                                scale: 10),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        'Chicken Biriyani',
                                        style: TextStyle(
                                            color: Colors.white70,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 22),
                                      ),
                                      Text(
                                        '₹ 120',
                                        style: TextStyle(
                                            color: Colors.white70,
                                            fontWeight: FontWeight.w600,
                                            fontSize: w * 0.044),
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
                                            Icons.star_half_outlined,
                                            size: 12,
                                            color: Colors.amber.shade500,
                                          ),
                                          Text(
                                            ' (150 Ratings)',
                                            style: TextStyle(
                                                color: Colors.white70,
                                                fontSize: 12),
                                          ),
                                        ],
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
                                                    add1 = true;
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
                          )),
                    ),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                      child: GlassContainer(
                          width: MediaQuery.of(context).size.width,
                          blur: 50,
                          borderRadius: BorderRadius.circular(8),
                          shadowStrength: 0,
                          color: Colors.white.withOpacity(0.1),
                          //shadowColor: Colors.grey,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 14),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: w * 0.38,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.asset('assets/food_menu2.png'),
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
                                      Row(
                                        children: [
                                          Text(
                                            'Best Selling',
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.white60),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10),
                                            child: Image.asset(
                                                'assets/non_veg.png',
                                                scale: 10),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        'Mutton Biriyani',
                                        style: TextStyle(
                                            color: Colors.white70,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 22),
                                      ),
                                      Text(
                                        '₹ 180',
                                        style: TextStyle(
                                            color: Colors.white70,
                                            fontWeight: FontWeight.w600,
                                            fontSize: w * 0.044),
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
                                            Icons.star_half_outlined,
                                            size: 12,
                                            color: Colors.amber.shade500,
                                          ),
                                          Text(
                                            ' (200 Ratings)',
                                            style: TextStyle(
                                                color: Colors.white70,
                                                fontSize: 12),
                                          ),
                                        ],
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
                                              add2 = true;
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
                          )),
                    ),


                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                      child: GlassContainer(
                          width: MediaQuery.of(context).size.width,
                          blur: 50,
                          borderRadius: BorderRadius.circular(8),
                          shadowStrength: 0,
                          color: Colors.white.withOpacity(0.1),
                          //shadowColor: Colors.grey,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 14),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: w * 0.38,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.asset('assets/food_menu3.png'),
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
                                      Row(
                                        children: [
                                          Text(
                                            'Best Selling',
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.white60),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10),
                                            child: Image.asset(
                                                'assets/veg.png',
                                                scale: 10),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        'Masal Dosa',
                                        style: TextStyle(
                                            color: Colors.white70,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 22),
                                      ),
                                      Text(
                                        '₹ 70',
                                        style: TextStyle(
                                            color: Colors.white70,
                                            fontWeight: FontWeight.w600,
                                            fontSize: w * 0.044),
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
                                            Icons.star_half_outlined,
                                            size: 12,
                                            color: Colors.amber.shade500,
                                          ),
                                          Text(
                                            ' (230 Ratings)',
                                            style: TextStyle(
                                                color: Colors.white70,
                                                fontSize: 12),
                                          ),
                                        ],
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
                          )),
                    ),


                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                      child: GlassContainer(
                          width: MediaQuery.of(context).size.width,
                          blur: 50,
                          borderRadius: BorderRadius.circular(8),
                          shadowStrength: 0,
                          color: Colors.white.withOpacity(0.1),
                          //shadowColor: Colors.grey,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 14),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: w * 0.38,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.asset('assets/food_menu4.png'),
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
                                      Row(
                                        children: [
                                          Text(
                                            'Best Selling',
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.white60),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10),
                                            child: Image.asset(
                                                'assets/non_veg.png',
                                                scale: 10),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        'Chicken Pizza',
                                        style: TextStyle(
                                            color: Colors.white70,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 22),
                                      ),
                                      Text(
                                        '₹ 230',
                                        style: TextStyle(
                                            color: Colors.white70,
                                            fontWeight: FontWeight.w600,
                                            fontSize: w * 0.044),
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
                                            Icons.star_half_outlined,
                                            size: 12,
                                            color: Colors.amber.shade500,
                                          ),
                                          Text(
                                            ' (350 Ratings)',
                                            style: TextStyle(
                                                color: Colors.white70,
                                                fontSize: 12),
                                          ),
                                        ],
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
                                              add4 = true;
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
                          )),
                    ),


                  ],
                )
              ],
            ),
          ),
        ),
      ),
      extendBody: true,
      bottomNavigationBar: add1||add2||add3||add4 ? Padding(
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
                            Get.to(FoodOrderSummaryPage());
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

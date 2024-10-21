import 'package:bucketlist/Login/login.dart';
import 'package:bucketlist/OnBoarding/onboarding_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    initialization();
  }

  initialization() async {
    await Future.delayed(const Duration(seconds: 2));
    Get.offAll(Login());
    //Get.offAll(DefaultLoading());
    // Get.offAll(NamePage());
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset('assets/ss.png'),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                'Powered by ZENTH Tech',

                style: TextStyle(fontSize: 16, color: Colors.white54,decoration: TextDecoration.none),
              ),
            ),
          ),
        ],

    );
  }
}

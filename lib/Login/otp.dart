import 'dart:math';

import 'package:bucketlist/OnBoarding/onboarding_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';
import 'package:pinput/pinput.dart';

import 'login.dart';

class OTP extends StatefulWidget {
  const OTP({Key? key}) : super(key: key);

  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {

  final controllerNumberOTP = TextEditingController();

  // boolean value
  bool sentOtp = false;
  bool wrongEmail = false;
  bool emailValidate = false;
  bool onResendOTP = false;



  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 50,
      height: 50,
      textStyle: const TextStyle(
          fontSize: 20,
          color: Color.fromRGBO(30, 60, 87, 1),
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
    );
    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Colors.green),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: Colors.white.withOpacity(0.5),
      ),
    );

    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      body: Container(
        // Add box decoration
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFEF9A9A),
              Color(0xFFFFE0B2),
              Color(0xFFFFEB3B),
              Color(0xFF4DB6AC),
            ],
          ),
        ),
        child: Center(
          child: GlassContainer(
            height: MediaQuery.of(context).size.height * 0.75,
            width: MediaQuery.of(context).size.width * 0.9,
            blur: 100,
            shadowStrength: 8,
            color: Colors.white.withOpacity(0.2),
            shadowColor: Colors.grey,
            borderRadius: BorderRadius.circular(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: w * 0.6,
                      child: Image.asset(
                        'assets/logo.png',
                      ),
                    ),
                    Text(
                      'OTP has Sent to \n${Login.phoneNumber}',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18, color: Colors.black54),
                    ),
                    Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                        child: Pinput(
                          controller: controllerNumberOTP,
                          defaultPinTheme: defaultPinTheme,
                          focusedPinTheme: focusedPinTheme,
                          submittedPinTheme: submittedPinTheme,
                          //androidSmsAutofillMethod:  AndroidSmsAutofillMethod.smsUserConsentApi,
                          length: 4,
                          pinputAutovalidateMode:
                              PinputAutovalidateMode.onSubmit,
                          showCursor: true,
                          onChanged: (value) async {
                            if (value.length >= 4) {
                              if (Login.phoneNumberOTP == controllerNumberOTP.text) {
                                await Fluttertoast.showToast(
                                    msg: 'Welcome');

                                Get.to(OnBoardingScreen());
                                //  await userIdStoreLocal();
                              } else {
                                setState(() {
                                  controllerNumberOTP.clear();
                                });
                                Fluttertoast.showToast(msg: 'OTP invalid');
                              }
                            }
                          },
                        )),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Didn\'t recive OTP?',
                                style: TextStyle(color: Colors.black54,fontSize: 16),
                              ),
                              onResendOTP
                                  ? TextButton(
                                      onPressed: () {
                                        setState(() {
                                          onResendOTP = false;
                                        });
                                      },
                                      child: Text('Resend OTP'))
                                  : TextButton(
                                      onPressed: () async {},
                                      child: TweenAnimationBuilder<Duration>(
                                          duration: Duration(seconds: 30),
                                          tween: Tween(
                                              begin: Duration(seconds: 30),
                                              end: Duration.zero),
                                          onEnd: () {
                                            setState(() {
                                              onResendOTP =
                                              true;
                                            });
                                          },
                                          builder: (BuildContext context,
                                              Duration value, Widget? child) {
                                            // final minutes = value.inMinutes;
                                            final seconds =
                                                value.inSeconds % 60;
                                            return Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text('Please Wait',
                                                    style: TextStyle(
                                                        color: Colors.black54,
                                                        fontSize: 16)),
                                                Text(' 0:$seconds',
                                                    style: TextStyle(
                                                        color: Colors.black54,
                                                        fontSize: 16)),
                                              ],
                                            );
                                          }),
                                    ),
                            ],
                          ),



                        ),
                        TextButton(
                            onPressed: () {
                           Get.offAll(Login());
                            }, child: Text('Wrong Number?',style: TextStyle(fontSize: 16),)),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: Column(
                    children: [
                      Text(
                        'A BucketList Private Limited',
                        style: TextStyle(color: Colors.grey.shade600,fontSize: 18),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                              onPressed: () {}, child: Text('Privacy Policy')),
                          TextButton(
                              onPressed: () {}, child: Text('Terms Condition'))
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

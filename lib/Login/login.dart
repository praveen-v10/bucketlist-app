import 'dart:convert';
import 'dart:math';
import 'package:emailjs/emailjs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';
import 'package:http/http.dart' as http;

import 'otp.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  static String phoneNumber = '';
  static String phoneNumberOTP = '';

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final controllerPhoneNumber = TextEditingController();


  // boolean value
  bool sentOtp = false;
  bool wrongEmail = false;
  bool numberValidate = false;


  @override
  Widget build(BuildContext context) {
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
                  children: [
                    Container(
                      height: h * 0.3,
                      child: Image.asset(
                        'assets/logo.png',
                      ),
                    ),
                    Text(
                      'Enter Your Phone Number',
                      style:
                          TextStyle(fontSize: h * 0.025, color: Colors.black54),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                      child: TextField(
                        controller: controllerPhoneNumber,
                        autocorrect: false,
                        keyboardType: TextInputType.phone,
                        autofocus: false,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(10)
                        ],
                        onChanged: (value) {
                          setState(() {
                            if (!mounted) return;
                            if(value.length == 10){
                              setState(() {
                                FocusManager.instance.primaryFocus
                                    ?.unfocus();
                                numberValidate = true;
                              });
                            } else {
                              setState(() {
                                numberValidate = false;
                              });
                            }
                            // String email = value;
                            // bool isEmail = RegExp(
                            //         r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$")
                            //     .hasMatch(email);
                            // emailValidate = isEmail;
                            // Login.emailId=controllerEmail.text;
                            // print(Login.emailId);
                          });
                          // print(value.isEmail);
                        },
                        style: TextStyle(fontSize: 16),
                        decoration: InputDecoration(
                            focusedBorder: const OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 1),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 1),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 12, horizontal: 15),
                            hintText: 'Phone Number',
                            hintStyle: TextStyle(color: Colors.grey.shade600)),
                      ),
                    ),

                    numberValidate?
                    OutlinedButton(
                      child: Text(
                        "Continue",
                        style: TextStyle(fontSize: 20,),
                      ),
                      style: OutlinedButton.styleFrom(
                        primary: Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        side: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      onPressed: () async {
                        setState(() {
                          Login.phoneNumberOTP = '0000';
                          Login.phoneNumber=controllerPhoneNumber.text;
                        });
                       // Get.offAll(const OTP());
                        Get.to(const OTP());
                      },
                    )
                        : OutlinedButton(
                      child: Text(
                        "Please Wait",
                        style: TextStyle(fontSize: 20),
                      ),
                      style: OutlinedButton.styleFrom(
                        primary: Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        side: BorderSide(
                          color: Colors.grey,
                        ),
                      ),
                      onPressed: () async {
                        Fluttertoast.showToast(
                            msg: "Please Enter Your Number",
                        );

                      },
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: Column(
                    children: [
                      Text('A BucketList Private Limited',style: TextStyle(fontSize: 18,color: Colors.black54),),
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

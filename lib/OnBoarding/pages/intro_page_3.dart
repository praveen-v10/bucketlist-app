import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IntroPage3 extends StatefulWidget {
  const IntroPage3({Key? key}) : super(key: key);

  @override
  State<IntroPage3> createState() => _IntroPage3State();
}

class _IntroPage3State extends State<IntroPage3> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(

      body: Container(
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Image.asset('assets/onb3.png',height: h * 0.3,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text('EXPLORE FOOD',style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: Text('Dive into a digital realm of culinary delights, waiting to tantalize your taste buds.',style: TextStyle(color: Colors.black54,fontSize: 18),textAlign: TextAlign.center,),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

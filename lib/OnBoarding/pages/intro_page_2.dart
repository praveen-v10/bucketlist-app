import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IntroPage2 extends StatefulWidget {
  const IntroPage2({Key? key}) : super(key: key);

  @override
  State<IntroPage2> createState() => _IntroPage2State();
}

class _IntroPage2State extends State<IntroPage2> {

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
              child: Image.asset('assets/onb2.png',height: h * 0.3,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text('SHOP GROCERIES',style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: Text('Step into our grocery aisles and explore a world of abundance, ripe for culinary exploration.',style: TextStyle(color: Colors.black54,fontSize: 18),textAlign: TextAlign.center,),
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

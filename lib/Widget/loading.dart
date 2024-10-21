import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: CupertinoColors.white,
      child: Center(
        child: SizedBox(

          width: MediaQuery.of(context).size.width * 0.6,
          child: Lottie.asset('assets/lottie/loading.json'),
        ),
      ),
    );
  }
}


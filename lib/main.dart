import 'package:bucketlist/Dashboard/Food/food_payment_page.dart';
import 'package:bucketlist/Dashboard/dashboard.dart';
import 'package:bucketlist/Login/login.dart';
import 'package:bucketlist/SplashScreen/splash_screenn.dart';
import 'package:bucketlist/Widget/order_confirm.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  final appDocumentDirectory = await getApplicationDocumentsDirectory();
  Hive.init(appDocumentDirectory.path);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bucket List',
      theme: ThemeData(
        fontFamily: GoogleFonts.ebGaramond().fontFamily,
      ),
      home: SplashScreen(),
      //home: DashBoard(),
    );
  }
}

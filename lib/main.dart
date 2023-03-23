import 'package:azkar_new/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder:(context,id) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home:  HomePage(),
      ),
    );
  }
}


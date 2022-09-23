import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sensex/home/view/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Sensex',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        canvasColor: Colors.transparent,
          bottomSheetTheme: const BottomSheetThemeData(
              backgroundColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(10))
              )
          )
      ),
      home: HomeScreen(),
    );
  }
}

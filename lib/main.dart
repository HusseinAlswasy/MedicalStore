import 'package:flutter/material.dart';
import 'package:medical_store/widgets/Home/Home.dart';
import 'package:medical_store/widgets/Shop_Layout.dart';
import 'package:medical_store/widgets/Splash/Splash_Screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MedicalStore());
}

class MedicalStore extends StatelessWidget {
  const MedicalStore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(primarySwatch: Colors.deepPurple),
    );
  }
}

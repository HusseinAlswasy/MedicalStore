import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:medical_store/shared/size_config/sizeConfig.dart';
import 'package:medical_store/widgets/onboarding/onbarding.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    goToBoarding();
  }
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Lottie.network(
                'https://assets7.lottiefiles.com/packages/lf20_pcqghvjn.json',
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'Medical Store',
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),

          ],
        ),
      ),
    );
  }
}

void goToBoarding() {
  Future.delayed(Duration(seconds: 6),(){
    Get.to(()=>OnBoarding(),transition: Transition.fade);
  });
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_store/shared/components/components.dart';
import 'package:medical_store/shared/size_config/sizeConfig.dart';
import 'package:lottie/lottie.dart';
import 'package:medical_store/widgets/Login%20&%20SignUp/login/login.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:get/get.dart';

class OnBoarding extends StatefulWidget {
  OnBoarding({Key? key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final Controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: Controller,
            children: [
              PageVeiwItem(
                  Item: 'Shopping',
                  describtion: 'Explore Medical Product now',
                  Image:
                      'https://assets8.lottiefiles.com/packages/lf20_ecvwbhww.json'),
              PageVeiwItem(
                  Item: 'Delivery On The Way',
                  describtion: 'Get Your Order By Speed Delivery',
                  Image:
                      'https://assets2.lottiefiles.com/packages/lf20_fxr713lj.json'),
              PageVeiwItem(
                  Item: 'Delivery Arrived',
                  describtion: 'Order is Arrived At Your Place',
                  Image:
                      'https://assets10.lottiefiles.com/private_files/lf30_lgRVxp.json'),
            ],
          ),
          Positioned(
            bottom: 200,
            left: 150,
            child: SmoothPageIndicator(
              controller: Controller,
              count: 3,
              effect: WormEffect(
                activeDotColor: Colors.green,
                dotHeight: 10,
                dotWidth: 10,
              ),
            ),
          ),
          Positioned(
            top: SizeConfig.deafultSize! * 8,
            right: 32,
            child: GestureDetector(
              onTap: (){
                Get.to(LoginScreen(),duration: Duration(microseconds: 250));
              },
              child: Text(
                'Skip',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 14,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Positioned(
            bottom: SizeConfig.deafultSize! * 6,
            right: SizeConfig.deafultSize! * 10,
            left: SizeConfig.deafultSize! * 10,
            child: GestureDetector(
              child: daefultButton(text:'Next'),
              onTap: () {
                if(Controller.page! <2){
                  Controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeIn);
                }else{
                  Get.to(()=>LoginScreen(),transition:Transition.rightToLeft,duration: Duration(milliseconds: 500));
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget PageVeiwItem({
    required String Item,
    required String describtion,
    required String Image,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 150,
        ),
        Center(
            child: Lottie.network(
          '${Image}',
          height: 280,
          width: 280,
        )),
        SizedBox(
          height: 30,
        ),
        Text(
          Item,
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          describtion,
          style: TextStyle(
            fontSize: 15,
            color: Colors.grey.withOpacity(.8),
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }
}

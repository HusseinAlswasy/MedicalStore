import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(), // circular on center
      notchMargin: 4.0,                  // سمك البعد حول الدايره
      color: Colors.transparent,
      elevation: 9.0,
      clipBehavior: Clip.antiAlias,
      child:Container(
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(25.0),topRight: Radius.circular(25.0)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 40,   //ارتفاع الايكون
              width:360,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.home,color: Colors.deepPurple,size: 30,),
                  SizedBox(width: 70,),
                  Icon(Icons.favorite,color: Colors.deepPurple,size: 30,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

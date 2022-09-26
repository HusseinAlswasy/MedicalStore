import 'package:flutter/material.dart';

class Products extends StatelessWidget {

 final String ImageProduct;
  final String? NameProduct;
  // final String? describtion;
  final String? price;

  Products({
    required this.ImageProduct,
    required this.NameProduct,
    // required this.describtion,
    required this.price,
});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15,bottom: 190),
      child: Container(
        padding: EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            //picture product
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                ImageProduct,
                height: 100,
                width: 150,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 10,),
            //name
            Row(
              children: [
                Text(
                  NameProduct!,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  price!,
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
            SizedBox(height: 8,),
            Row(
              children: [
                Icon(Icons.shopping_basket,color: Colors.deepPurple,size: 30,),
                SizedBox(width: 70,),
                Icon(Icons.favorite_rounded,color: Colors.deepPurple,size: 30,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

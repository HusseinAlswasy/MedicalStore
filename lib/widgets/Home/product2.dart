import 'package:flutter/material.dart';

class Product2 extends StatelessWidget {
  const Product2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 15,
          ),
          Container(
            width: MediaQuery.of(context).size.width - 30.0,
            height: MediaQuery.of(context).size.height - 50.0,
            padding: EdgeInsets.only(left: 15, right: 15),
            child: GridView.count(
              crossAxisCount: 2,
              primary: false,
              crossAxisSpacing: 10,
              mainAxisSpacing: 15,
              childAspectRatio: 0.8,
              children: [
                buildCard('Green Tea', '120 EG', 'assets/images/57.jpg', false,
                    false, context),
                buildCard('Green Tea', '120 EG', 'assets/images/57.jpg', true,
                    false, context),
                buildCard('Green Tea', '120 EG', 'assets/images/57.jpg', false,
                    true, context),
                buildCard('Green Tea', '120 EG', 'assets/images/57.jpg', false,
                    false, context),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }

  Widget buildCard(String name, String price, String imgPath, bool added,
      bool isFav, context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 5,
        right: 5,
        bottom: 5,
        left: 5,
      ),
      child: InkWell(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 2.0,
                blurRadius: 5.0,
              ),
            ],
            color: Colors.white,
          ),
          child: Column(
            children: [
              Padding(
                  padding:
                      EdgeInsets.only(right: 10, top: 5, left: 10, bottom: 5),
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    isFav
                        ? Icon(Icons.favorite_rounded, color: Colors.deepPurple)
                        : Icon(Icons.favorite_border, color: Colors.deepPurple)
                  ])),
              Hero(
                tag: imgPath,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 8,
                    right: 8,
                  ),
                  child: Container(
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage(imgPath),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Text(
                price,
                style: TextStyle(color: Colors.deepPurple, fontSize: 14),
              ),
              Text(
                name,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                  color: Colors.deepPurple,
                  height: 1.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    if (!added) ...[
                      Icon(
                        Icons.shopping_bag_rounded,
                        color: Colors.deepPurple,
                        size: 15,
                      ),
                      Text(
                        'Added to cart',
                        style:
                            TextStyle(color: Colors.deepPurple, fontSize: 12),
                      )
                    ],
                    if (added) ...[
                      Icon(Icons.remove_circle_outline,
                          color: Colors.deepPurple, size: 15.0),
                      Text('3',
                          style: TextStyle(
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0)),
                      Icon(Icons.add_circle_outline,
                          color: Colors.deepPurple, size: 15.0),
                    ]
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

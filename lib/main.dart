// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogueApp extends StatelessWidget {
  const CatalogueApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: "View Products".text.xl2.bold.white.make(),
          elevation: 0.0,
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        drawer: Drawer(),
       body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.white,
              // pinned: true,
              floating: true,
              snap: false,
              flexibleSpace: Container(
                padding: EdgeInsets.all(16.0),
                color: Color(0xFFFAFAFA),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.flash_on,
                        color: Colors.black,
                        size: 24.0,
                      ),
                      8.widthBox,
                      "Flash Sale- upto 60% off"
                          .text
                          .xl2
                          .bold
                          .black
                          .center
                          .make()
                          .shimmer(),
                      8.widthBox,
                      Icon(
                        Icons.flash_on,
                        color: Colors.black,
                        size: 24.0,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return buildProductCard();
                },
                childCount: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }


  Widget buildProductCard() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16.0),
      margin: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5.0,
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              "https://guide-images.cdn.ifixit.com/igi/dNtyBFFUd1Ktm1jf.medium",
              width: 100.0,
              height: 100.0,
              fit: BoxFit.cover,
            ),
          ),
          14.widthBox,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                "uPhone Ultra".text.xl2.bold.make(),
                5.heightBox,
                "6 GB, 1 TB, Galaxy Black".text.make(),
                8.heightBox,
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      "\$150.86".text.xl.bold.make(),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                "Buy".text.white.make(),
                                SizedBox(width: 5),
                                Icon(
                                  Icons.shopping_cart,
                                  color: Colors.white,
                                  size: 15,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(CatalogueApp());
}

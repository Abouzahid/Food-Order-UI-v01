import 'package:clippy_flutter/arc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:food_order_v1/Widgets/AppBarWidget.dart';
import 'package:food_order_v1/Widgets/DrawerWidget.dart';
import 'package:food_order_v1/Widgets/ItemBottomNavBar.dart';
class ItemPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: EdgeInsets.only(top: 5),
        child: ListView(
         children: [
           AppBarWidget(),
           Padding(padding: EdgeInsets.all(16),
           child: Image.asset(
             "assets/images/pizza.png",
             height: 300,
             //width: double.infinity,
           ),
           ),
          Arc(
            edge: Edge.TOP,
            arcType: ArcType.CONVEY,
            height: 30,
            child: Container(
              width: double.infinity,
              color: Colors.yellow,
              height: 350,
              child:
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Padding(padding:EdgeInsets.only(top: 60,bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RatingBar.builder(
                            initialRating: 4,
                            minRating: 1,
                            direction: Axis.horizontal,
                            itemCount: 5,
                            itemSize: 18,
                            itemPadding: EdgeInsets.symmetric(horizontal: 4),
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.orange,
                            ),
                            onRatingUpdate: (index){},
                          ),
                          Text(
                            "\$10",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 10,
                        bottom: 20,
                      ),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                              "Hot Pizza",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            width: 90,
                            padding: EdgeInsets.all(5),
                            decoration:BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  CupertinoIcons.minus,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                Text("2",style: TextStyle(fontSize: 16,color: Colors.white,),),
                                Icon(
                                  CupertinoIcons.plus,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ) ,
                    ),
                   Padding(
                     padding: EdgeInsets.symmetric(
                         vertical: 10,
                     ),
                   child: Text(
                     "Taste Our Hor Pizza at low price,this is famous pizza and you will love it. it will cost you at low price, we hope you will enjoy and order many times",
                     style: TextStyle(
                       fontSize: 16,
                     ),
                     textAlign: TextAlign.justify,
                   ),),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 15,
                          ),
                          child: Text(
                            "Delievery Time:",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                            ),
                            textAlign: TextAlign.justify,
                          ),),
                      Row(
                        children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 5,
                          ),
                          child:Icon(
                            CupertinoIcons.clock,
                            color: Colors.red,
                          ),
                        ),
                        Text(
                          "30 Minutes",
                          style: TextStyle(
                            fontSize: 16,

                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ],)
                     ],
                   ),
                  ],
                ),
              ),
            ),
          ),
         ],
        ),
      ) ,
      drawer: DrawerWiget(),
      bottomNavigationBar: ItemBottomNavBar(),
    );
  }
}

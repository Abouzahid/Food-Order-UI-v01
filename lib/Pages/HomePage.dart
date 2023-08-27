import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_order_v1/Widgets/DrawerWidget.dart';
import 'package:food_order_v1/Widgets/NewestItemsWidget.dart';
import 'package:food_order_v1/Widgets/PopularItemsWidget.dart';

import '../Widgets/AppBarWidget.dart';
import '../Widgets/CategoriesWidget.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: ListView(
        children:  [
          // Custom App bar Widget
          AppBarWidget(),

          //Search
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 15,
          ),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color:  Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(0,3),
                  ),
                ]),
              child:  Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Row(

                  children: [
                  Icon(
                    CupertinoIcons.search,
                    color: Colors.grey,
                  ),
                  Container(
                    height: 50,
                    width: 300,
                    child: Padding(

                        padding: EdgeInsets.symmetric(
                          horizontal:15,
                        ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "What would you like to have ?",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                    Expanded(child: Container()),

                ],
                ),
              ),
            ),
          ),

         // category
          Padding(padding: EdgeInsets.only(top: 20,left: 10),
            child: Text(
              "Categories",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,

              ),),
          ),

          //Category Widget
          CategoriesWidget(),

          //Popular Items
          Padding(padding: EdgeInsets.only(top: 20,left: 10),
            child: Text(
              "Popular",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,

              ),),
          ),

          //Popular Items Widget
          PopularItemsWidget(),

          //Newest Items
          Padding(padding: EdgeInsets.only(top: 20,left: 10),
            child: Text(
              "Newest",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,

              ),),
          ),

          //Newest items widget
          NewestItemsWidget(),

        ],
      ),
     drawer: DrawerWiget(),
      floatingActionButton: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 10,
              offset: Offset(0,3),
            ),
          ]),
          child: FloatingActionButton(
            onPressed: (){
              Navigator.pushNamed(context, "cartPage");
            },
            child:Icon(
              CupertinoIcons.cart,
              size:28 ,
              color: Colors.red,
            ),
          backgroundColor: Colors.white,
          ),
      ),
    );
  }
}

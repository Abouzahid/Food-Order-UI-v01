import 'package:flutter/material.dart';

class PopularItemsWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(padding: EdgeInsets.symmetric(vertical:15,horizontal: 5 ),
      child: 
      Row(
        children: [

          //Single Item
          Padding(padding: EdgeInsets.symmetric(horizontal: 7),
            child:
            Container(
              width: 170,
              height: 225,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius:3,
                    blurRadius: 10,
                    offset: Offset(0,3),
                  ),
                ]),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, "itemPage");
                      },
                      child: Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                            "assets/images/burgeer.jpg",
                          height: 130,
                        ),
                      ),
                    ),
                    Text("Hot Burger",style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    SizedBox(height: 4,),
                    Text("Taste Our Hot Burger",style: TextStyle(
                      fontSize: 15,
                      //fontWeight: FontWeight.bold,
                    ),
                    ),
                    SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("\$10",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,

                        ),
                        ),
                        Icon(
                            Icons.favorite_border,
                          color: Colors.red,
                          size: 26,
                        ),
                      ],),
                ],),

              ),
            ),
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 7),
            child:
            Container(
              width: 170,
              height: 225,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius:3,
                      blurRadius: 10,
                      offset: Offset(0,3),
                    ),
                  ]),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Image.asset(
                        "assets/images/pizza.png",
                        height: 130,
                      ),
                    ),
                    Text("Pizza",style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    SizedBox(height: 4,),
                    Text("Taste Our Pizza",style: TextStyle(
                      fontSize: 15,
                      //fontWeight: FontWeight.bold,
                    ),
                    ),
                    SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("\$15",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,

                          ),
                        ),
                        Icon(
                          Icons.favorite_border,
                          color: Colors.red,
                          size: 26,
                        ),
                      ],),
                  ],),

              ),
            ),
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 7),
            child:
            Container(
              width: 170,
              height: 225,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius:3,
                      blurRadius: 10,
                      offset: Offset(0,3),
                    ),
                  ]),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(5),
                      child: Image.asset(
                        "assets/images/sting.png",
                        height: 120,
                      ),
                    ),
                    Text("Sting Drink",style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    SizedBox(height: 4,),
                    Text("Taste Our Cold Sting",style: TextStyle(
                      fontSize: 15,
                      //fontWeight: FontWeight.bold,
                    ),
                    ),
                    SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("\$8",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,

                          ),
                        ),
                        Icon(
                          Icons.favorite_border,
                          color: Colors.red,
                          size: 26,
                        ),
                      ],),
                  ],),

              ),
            ),
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 7),
            child:
            Container(
              width: 170,
              height: 225,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius:3,
                      blurRadius: 10,
                      offset: Offset(0,3),
                    ),
                  ]),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Image.asset(
                        "assets/images/chicken-wings.jpg",
                        height: 130,
                      ),
                    ),
                    Text("Chicken Wings",style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    SizedBox(height: 4,),
                    Text("Taste Chicken Wings",style: TextStyle(
                      fontSize: 15,
                      //fontWeight: FontWeight.bold,
                    ),
                    ),
                    SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("\$20",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,

                          ),
                        ),
                        Icon(
                          Icons.favorite_border,
                          color: Colors.red,
                          size: 26,
                        ),
                      ],),
                  ],),

              ),
            ),
          ),
        
      ],),),
    );
  }
}


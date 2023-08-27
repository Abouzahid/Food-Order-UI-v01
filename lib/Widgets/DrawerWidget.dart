import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class  DrawerWiget extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child:
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.yellow,
              ),
              accountName: Text(
                "Jhon Doe",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              accountEmail: Text("jhondoe@gmail.com",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
              ),
              currentAccountPicture:CircleAvatar(
                  backgroundImage: AssetImage("assets/images/avatar.jpg"),
              ) ,
            ),
          ),
          GestureDetector(
            child: ListTile(
              onTap: (){
                Navigator.pushNamed(context, "homePage");
              },
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.red,
              ),
              title: Text(
                  "Home",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          GestureDetector(
            child: ListTile(
              onTap: (){
                Navigator.pushNamed(context, "myAccountPage");
              },
              leading: Icon(
                CupertinoIcons.person,
                color: Colors.red,
              ),
              title: Text(
                "My Account",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          GestureDetector(
            child: ListTile(
              onTap: (){
                Navigator.pushNamed(context, "cartPage");
              },
              leading: Icon(
                CupertinoIcons.cart_fill,
                color: Colors.red,
              ),
              title: Text(
                "My order",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.heart_fill,
              color: Colors.red,
            ),
            title: Text(
              "My Wish List",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          GestureDetector(
            child: ListTile(
              onTap: (){
                Navigator.pushNamed(context, "settingsPage");
              },
              leading: Icon(
                CupertinoIcons.settings,
                color: Colors.red,
              ),
              title: Text(
                "Setting",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          GestureDetector(
            child: ListTile(
              onTap: (){
                Navigator.pushNamed(context, "loginPage");
              },
              leading: Icon(
                Icons.exit_to_app,
                color: Colors.red,
              ),
              title: Text(
                "Log Out",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
      ],),
    );
  }
}

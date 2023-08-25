import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class MyAccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 80,
            backgroundImage: AssetImage('assets/profile_image.png'),
          ),
          SizedBox(height: 20),
          Text(
            'John Doe',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'johndoe@example.com',
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 40),
          Divider(),
          SizedBox(height: 20),
          InkWell(
            onTap: () {
              // Implement the logic to navigate to the profile edit screen.
            },
            child: ListTile(
              leading: Icon(
                CupertinoIcons.person,
                color: Colors.blue,
              ),
              title: Text(
                'Edit Profile',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.blue,
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.blue,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              // Implement the logic to navigate to the password change screen.
            },
            child: ListTile(
              leading: Icon(
                CupertinoIcons.lock,
                color: Colors.green,
              ),
              title: Text(
                'Change Password',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.green,
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.green,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              // Implement the logic to log the user out.
            },
            child: ListTile(
              leading: Icon(
                CupertinoIcons.power,
                color: Colors.red,
              ),
              title: Text(
                'Log Out',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.red,
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

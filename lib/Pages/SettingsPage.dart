import 'package:flutter/material.dart';


class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(
        child: SignUpForm(),
      ),
    );
  }
}

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _currentPasswordController = TextEditingController();
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      //Navigator.pushNamed(context, "loginPage");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Change Password',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: _currentPasswordController,
              decoration: InputDecoration(
                labelText: 'First Name',
                prefixIcon: Icon(Icons.lock,color: Colors.red,),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your current Password';
                }
                return null;
              },
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: _newPasswordController,
              decoration: InputDecoration(
                labelText: 'New Password',
                prefixIcon: Icon(Icons.lock,color: Colors.red,),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter your New Password';
                }
                return null;
              },
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: _confirmPasswordController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Confirm your Password',
                prefixIcon: Icon(Icons.lock,color: Colors.red,),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please confirm your new password';
                }
                return null;
              },
            ),

            SizedBox(height: 30),
            ElevatedButton(
              onPressed: _submitForm,
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                backgroundColor: Colors.red,
              ),
              child: Text(
                'Save Change',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

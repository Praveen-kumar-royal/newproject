import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() {
    return _RegisterPageState();
  }
}

class _RegisterPageState extends State<RegisterPage> {
  var name = '';
  var email = '';
  var phone = '';
  var password = '';
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: ListView(
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: 'name',
                labelStyle: TextStyle(fontSize: 20),
              ),controller:nameController,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'email',
                labelStyle: TextStyle(fontSize: 20),
              ),controller:emailController,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'phone',
                labelStyle: TextStyle(fontSize: 20),
              ),
              controller:phoneController,
            ),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'password',
                labelStyle: TextStyle(fontSize: 20),
              ),controller:passwordController,
            ),
            ElevatedButton(
              onPressed: (){
              print('clicked');
              setState(() {
                name=nameController.text;
                email=emailController.text;
                phone=phoneController.text;
                password=passwordController.text;
                  });
            }, 
            child: Text('Register'),
            ),
            Text('name:$name'),
            Text('email:$email'),
            Text('phone:$phone'),
            Text('password:$password'),
          ],
        ),
      ),
    );
  }
}

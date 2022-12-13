import 'package:flutter/material.dart';

import '../components/button.dart';
import '../components/textfield.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _fullnameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFieldWidget(
              hintText: 'Full name',
              preIcon: Icons.person,
              controller: _fullnameController,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            TextFieldWidget(
              hintText: 'Phone number',
              preIcon: Icons.phone_android,
              controller: _phoneController,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            TextFieldWidget(
              hintText: 'Email',
              preIcon: Icons.email_outlined,
              controller: _emailController,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            TextFieldWidget(
              hintText: 'Password',
              preIcon: Icons.lock_outline,
              controller: _passwordController,
              postIcon: Icons.remove_red_eye_outlined,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.05),
            ButtonWidget(height: 0.06, color: Colors.red, title: 'Register', onClick: ()=>print('Usama'))
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:twitter_clone/widgets/rounded_button.dart';
import 'package:twitter_clone/constants.dart';
import 'login_email_screen.dart';

class ForgotPasswordScreen extends StatefulWidget {
  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  late String _email;
  late String _password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/logo.png',
                height: 50,
                width: 50,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Find your Twitter account',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  hintText: 'Enter your email, phone number, or username',
                ),
                onChanged: (value) {
                  _email = value;
                },
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: RoundedButton(
                  minWidth: 100,
                  colour: Colors.black,
                  title: 'Search',
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

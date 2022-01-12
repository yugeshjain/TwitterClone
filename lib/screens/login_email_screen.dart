import 'package:flutter/material.dart';
import 'package:twitter_clone/widgets/rounded_button.dart';
import 'package:twitter_clone/constants.dart';
import '../constants.dart';
import 'forgotPassword_screen.dart';
import 'login_password_screen.dart';
import 'welcome_screen.dart';

class LoginEmailScreen extends StatefulWidget {
  @override
  _LoginEmailScreenState createState() => _LoginEmailScreenState();
}

class _LoginEmailScreenState extends State<LoginEmailScreen> {
  var _email = TextEditingController();
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
                height: 25,
                width: 25,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'To get started, first enter your phone, email address or @username',
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
                  hintText: 'Phone, email address or username',
                ),
                controller: _email,
              ),
              const SizedBox(
                height: 8,
              ),
              InkWell(
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: KTwitterColor,
                  ),
                ),
                onTap: () {
                  var push = Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ForgotPasswordScreen(),
                    ),
                  );
                },
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: RoundedButton(
                  minWidth: 100,
                  colour: Colors.black,
                  title: 'Next',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            LoginPasswordScreen(email: _email.text),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:twitter_clone/widgets/rounded_button.dart';
import 'package:twitter_clone/constants.dart';
import 'forgotPassword_screen.dart';
import 'package:twitter_clone/bottom_nav.dart';

class RegistrationPasswordScreen extends StatefulWidget {
  @override
  _RegistrationPasswordScreenState createState() =>
      _RegistrationPasswordScreenState();
}

class _RegistrationPasswordScreenState
    extends State<RegistrationPasswordScreen> {
  late String password;
  late String repeatedPassword;
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
            mainAxisAlignment: MainAxisAlignment.start,
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
                'Enter your password',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'password',
                ),
                onChanged: (value) {
                  password = value;
                },
              ),
              TextField(
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 're-enter password',
                ),
                onChanged: (value) {
                  repeatedPassword = value;
                },
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
                  title: 'Register',
                  onPressed: () {
                    if (password == repeatedPassword) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BottomNavBar(),
                        ),
                      );
                    } else {}
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

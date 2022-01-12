import 'package:flutter/material.dart';
import 'package:twitter_clone/widgets/rounded_button.dart';
import 'package:twitter_clone/screens/registration_password_screen.dart';
import 'package:twitter_clone/bottom_nav.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  late String name;
  late String newEmail;
  late String dob;

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
                height: 30,
                width: 30,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Create your account',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                maxLength: 50,
                decoration: const InputDecoration(
                  hintText: 'Name',
                ),
                onChanged: (value) {
                  name = value;
                },
              ),
              TextField(
                decoration: const InputDecoration(
                  hintText: 'Phone number or email address',
                ),
                onChanged: (value) {
                  newEmail = value;
                },
              ),
              TextField(
                decoration: const InputDecoration(
                  hintText: 'Date of birth',
                ),
                onChanged: (value) {
                  dob = value;
                },
              ),
              const SizedBox(
                height: 8,
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
                        builder: (context) => RegistrationPasswordScreen(),
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

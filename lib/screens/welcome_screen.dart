import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:twitter_clone/widgets/rounded_button.dart';
import 'package:twitter_clone/screens/login_email_screen.dart';
import 'package:twitter_clone/screens/registration_screen.dart';

import '../constants.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Image.asset(
                    'assets/logo.png',
                    height: 50,
                    width: 50,
                  ),
                  const SizedBox(
                    height: 180,
                  ),
                  const Text(
                    'See what\' s happening in the world right now',
                    style: TextStyle(
                      fontSize: 28,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 80,
              ),
              Column(
                children: [
                  Material(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30.0),
                    child: Row(
                      children: [
                        // Image.asset(
                        //   'assets/googleLogo.png',
                        //   fit: BoxFit.contain,
                        // ),
                        MaterialButton(
                          focusElevation: 1,
                          onPressed: () {},
                          minWidth: 350,
                          height: 25.0,
                          child: const Text(
                            'Continue with Google',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const Text('Or'),
                  RoundedButton(
                    minWidth: 350,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegistrationScreen(),
                        ),
                      );
                    },
                    colour: KTwitterColor,
                    title: 'Create account',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: const [
                        Text(
                          'By signing up, you agree to our Terms, Privacy Policy, and Cookie \nUse.',
                          style: TextStyle(
                            fontSize: 11,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        const Text(
                          'Have an Account already?',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black54,
                          ),
                        ),
                        InkWell(
                          child: const Text(
                            ' Log in',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: KTwitterColor,
                            ),
                          ),
                          onTap: () {
                            var push = Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginEmailScreen(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

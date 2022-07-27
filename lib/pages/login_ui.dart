import 'package:flutter/material.dart';

import '../Reuseables/reusableTextField.dart';
import '../Reuseables/reusable_sns.dart';
import '../constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Colors.grey[800]!,
              Colors.grey[500]!,
              Colors.grey[400]!,
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 80, right: 20),
              child: Text(
                'Sign Up',
                style: signupStyle,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: Text(
                'Welcome',
                style: welcoming,
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50.0),
                    topLeft: Radius.circular(50.0),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 60.0,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromRGBO(171, 171, 171, 0.7),
                                blurRadius: 20.0,
                                offset: Offset(0, 10),
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              ReusableTextField(
                                myHint: 'Full name',
                              ),
                              ReusableTextField(
                                myHint: 'Email',
                              ),
                              ReusableTextField(
                                myHint: 'Phone',
                              ),
                              ReusableTextField(
                                myHint: 'Password',
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 40.0,
                        ),
                        Container(
                          height: 50.0,
                          margin: const EdgeInsets.symmetric(horizontal: 50.0),
                          decoration: BoxDecoration(
                            color: Colors.black54,
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          child: const Center(
                            child: Text(
                              'SignUp',
                              style: reusablesnss,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        const Text(
                          'Sign Up with SNS',
                          style: sns,
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        Row(
                          children: [
                            ReusableSNS(
                              whatSocialMedia: 'Facebook',
                              whichColor: Colors.blue,
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            ReusableSNS(
                              whatSocialMedia: 'Google',
                              whichColor: Colors.red,
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            ReusableSNS(
                              whatSocialMedia: 'Apple',
                              whichColor: Colors.black,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

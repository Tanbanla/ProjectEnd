import 'package:app_spotify/common/app_bar.dart';
import 'package:app_spotify/common/basic_app_button.dart';
import 'package:app_spotify/core/assets/app_vectors.dart';
import 'package:app_spotify/domain/repository/choose_mode/pages/auth/signup.dart';
import 'package:app_spotify/domain/repository/choose_mode/pages/auth/signup_or_siginin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppBar(
        title: SvgPicture.asset(AppVectors.logo, height: 40, width: 40),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _registerText(),
            SizedBox(height: 50),
            _fullNameField(context),
            SizedBox(height: 24),
            _passwordField(context),
            SizedBox(height: 24),
            BasicAppButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => SignupOrSigininPage(),
                  ),
                );
              },
              title: 'Sign In',
              height: null,
            ),
            Spacer(),
            _signinText(context),
          ],
        ),
      ),
    );
  }

  Widget _registerText() {
    return Text(
      'Sign In',
      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
    );
  }

  Widget _fullNameField(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        hintText: 'Enter Username Or Email',
        fillColor: Colors.transparent,
        contentPadding: EdgeInsets.all(30),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
      ).applyDefaults(Theme.of(context).inputDecorationTheme),
    );
  }

  Widget _passwordField(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        hintText: 'Password',
        fillColor: Colors.transparent,
        contentPadding: EdgeInsets.all(30),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
      ).applyDefaults(Theme.of(context).inputDecorationTheme),
    );
  }

  Widget _signinText(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Not A Member?',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => SignupPage(),
              ),
            );
          },
          child: Text(
            'Register Now',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
        ),
      ],
    );
  }
}

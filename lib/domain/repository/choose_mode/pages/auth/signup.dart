import 'package:app_spotify/common/app_bar.dart';
import 'package:app_spotify/common/basic_app_button.dart';
import 'package:app_spotify/core/assets/app_vectors.dart';
import 'package:app_spotify/domain/repository/choose_mode/pages/auth/signin.dart';
import 'package:app_spotify/domain/repository/choose_mode/pages/auth/signup_or_siginin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

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
            _emailField(context),
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
              title: 'Creat Account',
              height: null,
            ),
            Spacer(),
            _signupText(context),
          ],
        ),
      ),
    );
  }

  Widget _registerText() {
    return Text(
      'Register',
      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
    );
  }

  Widget _fullNameField(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        hintText: 'Full Name',
        fillColor: Colors.transparent,
        contentPadding: EdgeInsets.all(30),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
      ).applyDefaults(Theme.of(context).inputDecorationTheme),
    );
  }

  Widget _emailField(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        hintText: 'Enter Email',
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

  Widget _signupText(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Do You Have An Account?',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => SigninPage(),
              ),
            );
          },
          child: Text(
            'Sign In',
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

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:line_icons/line_icons.dart';

import '../components/social_signin_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff6fafd),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Trikster',
                style: TextStyle(
                  fontSize: 32,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              const SizedBox(height: 24),
              SocialSignInButton(
                icon: const Icon(LineIcons.apple),
                title: 'Sign in with Apple',
                onPressed: () {
                  print('Signed with Apple');
                  context.goNamed('dashboard');
                },
              ),
              SocialSignInButton(
                icon: const Icon(LineIcons.googleLogo),
                title: 'Sign in with Google',
                onPressed: () {
                  print('Signed with Google');
                  context.goNamed('dashboard');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

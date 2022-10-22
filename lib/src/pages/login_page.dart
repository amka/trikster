import 'package:flutter/material.dart';

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
              SizedBox(
                height: 48,
                child: MaterialButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.apple),
                      SizedBox(width: 8),
                      Text('Sign in with Apple'),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 48,
                child: MaterialButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.golf_course),
                      SizedBox(width: 8),
                      Text('Sign in with Google'),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../components/create_new_button.dart';
import '../components/header_bar.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff6fafd),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Flexible(
                child: Column(
                  children: const [
                    HeaderBar(),
                  ],
                ),
              ),
              const CreateNewButton()
            ],
          ),
        ),
      ),
    );
  }
}

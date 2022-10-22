import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';

import '../components/header_bar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.grey[900],
        elevation: 0,
        leading: IconButton(
          onPressed: () => context.goNamed('dashboard'),
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      backgroundColor: const Color(0xfff6fafd),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: const [
              Expanded(
                child: Center(
                  child: Text('Profile'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:untitled1/login_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Container(
              color: Theme.of(context).colorScheme.primaryContainer,
              child: LoginScreen(),
            ),
          ),
        ],
      ),
    );
  }
}

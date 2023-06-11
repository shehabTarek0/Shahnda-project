// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:untitled1/component.dart';
import 'package:untitled1/login_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(40),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/glass.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              'w e l c o m e',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 50.0,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 500.0,
            ),
            ElevatedButton(
              onPressed: () {
                navigateTo(context, const LoginScreen());
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(20.0),
                fixedSize: const Size(300, 80),
                elevation: 15,
                backgroundColor: Colors.grey,
                shadowColor: Colors.blueGrey,
                side: const BorderSide(color: Colors.white, width: 2),
                shape: const StadiumBorder(),
              ),
              child: const Text("Get Started"),
            ),
          ],
        ),
      ),
    );
  }

  void onNotification() {
    print('notificathion clicked');
  }
}

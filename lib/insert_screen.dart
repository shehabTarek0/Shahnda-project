// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:untitled1/register_screen.dart';

class InsertScreen extends StatelessWidget {
  const InsertScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Assistance glass',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blueGrey,
        elevation: 15.0,
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Register AS',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 50.0,
                color: Colors.blueGrey,
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    _navigateToRegistrScreen(context);
                  },
                  icon: const Icon(
                    // <-- Icon
                    Icons.boy_sharp,
                  ),
                  label: const Text(
                    'helper',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ), // <-- Text
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blueGrey,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 18, vertical: 30),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                  width: 10.0,
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    // <-- Icon
                    Icons.person,
                  ),
                  label: const Text(
                    'USER',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ), // <-- Text
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blueGrey,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 30),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _navigateToRegistrScreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => RegistrScreen()));
  }
}

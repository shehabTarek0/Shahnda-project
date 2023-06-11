import 'package:flutter/material.dart';

Widget defaultButton({
  required double width,
  required Color background,
  required Function function,
  required String text,
}) =>
    Container(
      width: width,
      color: background,
      child: MaterialButton(
        onPressed: function(),
        child: Text(
          text.toUpperCase(),
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );



void navigateTo(BuildContext context,widget) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => widget));
}

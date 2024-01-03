import 'package:flutter/material.dart';

Future mapDisplayModalBottomSheet(BuildContext context) {
  return showModalBottomSheet(
    context: context,
    builder: (context) => SafeArea(
      child: Container(
        height: 250,
        padding:
            const EdgeInsets.only(top: 25, left: 20, right: 20, bottom: 20),
      ),
    ),
  );
}

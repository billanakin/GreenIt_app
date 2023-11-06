import 'package:flutter/material.dart';

class InlineTextDivider extends StatelessWidget {
  const InlineTextDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 4,
      height: 4,
      decoration: const BoxDecoration(
        color: Color(0xFFD9D9D9),
        shape: BoxShape.circle,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: CircleAvatar(
        backgroundImage: AssetImage("assets/images/saly15.png"),
      ),
    );
  }
}

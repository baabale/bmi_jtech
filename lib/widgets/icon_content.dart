import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  const IconContent({
    Key? key,
    this.iconData,
    required this.title,
  }) : super(key: key);

  final IconData? iconData;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          size: 80,
        ),
        const SizedBox(height: 10),
        Text(
          title,
          style: TextStyle(
            fontSize: 26,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}

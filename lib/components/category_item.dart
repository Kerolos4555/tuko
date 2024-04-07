import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final String? text;
  final Color? color;
  final Function()? onTap;
  const Category({Key? key, this.text, this.color, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 65,
        width: double.infinity,
        padding: const EdgeInsets.only(left: 24),
        color: color,
        alignment: Alignment.centerLeft,
        child: Text(
          text!,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

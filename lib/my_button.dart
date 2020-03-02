import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String label;
  final Function onPressed;
  final Color color;
  final Color backgroundColor;

  MyButton(
      {@required this.label,
      this.onPressed,
      this.color = Colors.white,
      this.backgroundColor = Colors.red});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.all(Radius.circular(6.0)),
      color: this.backgroundColor,
      child: InkWell(
        onTap: this.onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: Text(
            this.label,
            style: TextStyle(color: this.color),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.text,
    required this.onPressed, this.color,
  });
  final String text;
  final Function() onPressed;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        minimumSize: Size(0, 0),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),

      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(fontSize: 14, color: color),
      ),
    );
  }
}

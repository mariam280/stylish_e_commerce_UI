import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.text,
    required this.onPressed, required this.textStyle,
  });
  final String text;
  final Function() onPressed;
  final TextStyle textStyle;
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
        style: textStyle,
      ),
    );
  }
}

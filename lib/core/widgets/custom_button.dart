import 'package:book_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({
    super.key,
    required this.backgroundColor,
    required this.title,
    required this.color,
    required this.borderRadius,
  });

  final Color backgroundColor;

  final String title;
  final Color color;
  final BorderRadiusGeometry borderRadius;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(borderRadius: borderRadius),
      ),
      child: Text(
        title,
        style: Styles.textstyle18.copyWith(color: color),
      ),
    );
  }
}

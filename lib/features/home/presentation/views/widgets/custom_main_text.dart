import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class CustomMainText extends StatelessWidget {
  const CustomMainText({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Row(
        children: [
          Text(
            title,
            style: Styles.textstyle20,
          ),
        ],
      ),
    );
  }
}

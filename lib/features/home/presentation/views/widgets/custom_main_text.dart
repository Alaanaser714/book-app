import 'package:flutter/material.dart';

import '../../../../../core/constants/styles.dart';

class CustomMainText extends StatelessWidget {
  const CustomMainText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: Row(
        children: [
          Text(
            "Best Seller",
            style: Styles.textstyle20,
          ),
        ],
      ),
    );
  }
}

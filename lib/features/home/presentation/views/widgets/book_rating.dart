import 'package:flutter/material.dart';

import '../../../../../core/constants/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          r"19.99$",
          style: Styles.textstyle18,
          maxLines: 2,
        ),
        Spacer(),
        Icon(
          Icons.star,
          color: Colors.amber,
          size: 20,
        ),
        Text(
          "4.5",
          style: Styles.textstyle18,
          maxLines: 2,
        ),
        SizedBox(width: 10),
        Text(
          "(2390)",
          style: Styles.textstyle18,
          maxLines: 2,
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    required this.mainAxisAlignment,
  });

  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
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

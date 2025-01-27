import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_button.dart';

class BookActionsButtons extends StatelessWidget {
  const BookActionsButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomButtom(
            title: r"19.99$",
            color: Colors.black,
            backgroundColor: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8), bottomLeft: Radius.circular(8)),
          ),
        ),
        Expanded(
          child: CustomButtom(
            title: "free preview",
            color: Colors.white,
            backgroundColor: Colors.redAccent,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(8), bottomRight: Radius.circular(8)),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class AppbarBookDetails extends StatelessWidget {
  const AppbarBookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.close,
                  size: 30,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.shopping_bag,
                  size: 30,
                )),
          ],
        ),
      ),
    );
  }
}

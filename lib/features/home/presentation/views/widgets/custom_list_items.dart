import 'package:flutter/material.dart';

class CustomListItems extends StatelessWidget {
  const CustomListItems({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .3,
        child: AspectRatio(
          aspectRatio: 2.5 / 4,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                  imageUrl,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

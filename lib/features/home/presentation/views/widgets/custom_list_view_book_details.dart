import 'package:flutter/material.dart';

import 'custom_list_items.dart';

class CustomListViewBookDetails extends StatelessWidget {
  const CustomListViewBookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .2,
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CustomListItems();
        },
      ),
    );
  }
}

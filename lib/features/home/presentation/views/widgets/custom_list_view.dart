// ignore_for_file: body_might_complete_normally_nullable

import 'package:flutter/material.dart';

import 'custom_list_items.dart';

class CustomListViewItems extends StatelessWidget {
  const CustomListViewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
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

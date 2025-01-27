import 'package:flutter/material.dart';

import 'custom_best_seller_items.dart';

class CustomListBestSellerItems extends StatelessWidget {
  const CustomListBestSellerItems({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: CustomBestSelleritems(),
        );
      },
    );
  }
}

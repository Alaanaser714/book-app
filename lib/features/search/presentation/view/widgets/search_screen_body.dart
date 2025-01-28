import 'package:book_app/features/search/presentation/view/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

import '../../../../home/presentation/views/widgets/custom_list_best_seller_items.dart';
import '../../../../home/presentation/views/widgets/custom_main_text.dart';

class SearchScreenBody extends StatelessWidget {
  const SearchScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomTextField(),
            ),
            SizedBox(height: 10),
            CustomMainText(
              title: 'SearchResults',
            ),
            CustomListBestSellerItems()
          ],
        ),
      ),
    );
  }
}

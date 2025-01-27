// ignore_for_file: body_might_complete_normally_nullable

import 'package:book_app/features/home/presentation/views/widgets/custom_list_view.dart';
import 'package:flutter/material.dart';
import 'custom_app_bar.dart';
import 'custom_list_best_seller_items.dart';
import 'custom_main_text.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              CustomAppBar(),
              CustomListViewItems(),
              SizedBox(height: 15),
              CustomMainText(),
              SizedBox(height: 15),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: CustomListBestSellerItems(),
        )
      ],
    ));
  }
}

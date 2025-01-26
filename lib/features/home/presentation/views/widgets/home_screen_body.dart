// ignore_for_file: body_might_complete_normally_nullable

import 'package:book_app/features/home/presentation/views/widgets/custom_list_view.dart';
import 'package:flutter/material.dart';

import 'custom_app_bar.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(),
          CustomListViewItems(),
          Text("Best Seller"),
        ],
      ),
    );
  }
}

// ignore_for_file: body_might_complete_normally_nullable

import 'package:book_app/features/home/presentation/viewmodel/cubits/featured_book_cuibt/featured_book_cuibt.dart';
import 'package:book_app/features/home/presentation/viewmodel/cubits/featured_book_cuibt/featured_book_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_list_items.dart';

class CustomListViewItems extends StatelessWidget {
  const CustomListViewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBookCuibt, FeaturedBookStates>(
      builder: (context, state) {
        if (state is FeaturedBookSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return CustomListItems(
                  imageUrl: state.books[index].volumeInfo.imageLinks!.thumbnail,
                );
              },
            ),
          );
        } else if (state is FeaturedBookFailure) {
          return Text(state.errMessage);
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}

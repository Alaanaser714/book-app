import 'package:book_app/features/home/presentation/viewmodel/cubits/similar_books_cubit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_list_items.dart';

class CustomListViewBookDetails extends StatelessWidget {
  const CustomListViewBookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .2,
            child: ListView.builder(
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return CustomListItems(
                  imageUrl: state.books[index].volumeInfo.imageLinks!.thumbnail,
                );
              },
            ),
          );
        } else if (state is SimilarBooksFailure) {
          return Center(child: Text(state.errMessage));
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}

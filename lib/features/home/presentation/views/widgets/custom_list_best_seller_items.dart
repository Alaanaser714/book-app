import 'package:book_app/features/home/presentation/viewmodel/cubits/newest_book/newest_book_cubit/newest_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_best_seller_items.dart';

class CustomListBestSellerItems extends StatelessWidget {
  const CustomListBestSellerItems({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBookCubit, NewestBookState>(
      builder: (context, state) {
        if (state is NewestBookSuccess) {
          return ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.newestbooks.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: CustomBestSelleritems(
                  bookModel: state.newestbooks[index],
                ),
              );
            },
          );
        } else if (state is NewestBookFailure) {
          return Text(state.errMessage);
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}

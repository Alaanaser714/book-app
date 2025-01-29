import 'package:book_app/features/home/data/repo/home_repo.dart';

import 'featured_book_states.dart';
import 'package:bloc/bloc.dart';

class FeaturedBookCuibt extends Cubit<FeaturedBookStates> {
  FeaturedBookCuibt(this.homeRepo) : super(FeaturedBookInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBookLoading());
    var result = await homeRepo.fetchFeaturedBooks();

    result.fold((failure) {
      emit(FeaturedBookFailure(failure.errMessage));
    }, (r) {
      emit(FeaturedBookSuccess(r));
    });
  }
}

import 'package:bloc/bloc.dart';
import 'package:book_app/features/home/data/repo/home_repo.dart';
import 'package:meta/meta.dart';

import '../../../../../data/models/book2_model.dart';

part 'newest_book_state.dart';

class NewestBookCubit extends Cubit<NewestBookState> {
  NewestBookCubit(this.homeRepo) : super(NewestBookInitial());

  final HomeRepo homeRepo;

  Future<void> fetchNewestBooks() async {
    emit(NewestBookLoading());
    var result = await homeRepo.fetchNewestBooks();

    result.fold((failure) {
      emit(NewestBookFailure(failure.errMessage));
    }, (r) {
      emit(NewestBookSuccess(r));
    });
  }
}

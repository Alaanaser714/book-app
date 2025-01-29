part of 'newest_book_cubit.dart';

@immutable
sealed class NewestBookState {}

final class NewestBookInitial extends NewestBookState {}

final class NewestBookLoading extends NewestBookState {}

final class NewestBookSuccess extends NewestBookState {
  final List<BookModel> newestbooks;
  NewestBookSuccess(this.newestbooks);
}

final class NewestBookFailure extends NewestBookState {
  final String errMessage;
  NewestBookFailure(this.errMessage);
}

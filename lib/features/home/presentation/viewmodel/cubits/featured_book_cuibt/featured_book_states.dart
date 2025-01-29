import 'package:book_app/features/home/data/models/book_model.dart';

abstract class FeaturedBookStates {}

class FeaturedBookInitial extends FeaturedBookStates {}

class FeaturedBookLoading extends FeaturedBookStates {}

class FeaturedBookSuccess extends FeaturedBookStates {
  final List<BookModel> books;
  FeaturedBookSuccess(this.books);
}

class FeaturedBookFailure extends FeaturedBookStates {
  final String errMessage;
  FeaturedBookFailure(this.errMessage);
}

import 'package:book_app/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

import '../models/book_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchBestSeelerBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
}

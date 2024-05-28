import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:the_movie/infrastructure/datasources/moviedb_datasourse.dart';
import 'package:the_movie/infrastructure/repositories/movie_repository_impl.dart';

final movieRepositoryProvider = Provider((ref) {
  return MoviesRepositoryImpl(MoviesdbDatasource());
});

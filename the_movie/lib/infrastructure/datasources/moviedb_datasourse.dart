import 'package:dio/dio.dart';
import 'package:the_movie/domain/datasources/movies_datasource.dart';
import 'package:the_movie/domain/entities/movie.dart';
import 'package:the_movie/environment/environment.dart';
import 'package:the_movie/infrastructure/mappers/movie_mapper.dart';
import 'package:the_movie/infrastructure/models/moviedb/moviedb_response.dart';

class MoviesdbDatasource extends MoviesDatasource {
  final dio = Dio(
      BaseOptions(baseUrl: 'https://api.themoviedb.org/3', queryParameters: {
    'api_key': Environment.theMovieDbKey,
    'language': 'es-MX',
  }));

  @override
  Future<List<Movie>> getMovies({int page = 1}) async {
    final response = await dio.get('/movie/now_playing');
    final movieDBResponse = MovieDbResponse.fromJson(response.data);
    final List<Movie> movies = movieDBResponse.results
        .where((movie) => movie.posterPath != "no-poster")
        .map((e) => MovieMapper.movieDBToEntity(e))
        .toList();

    return movies;
  }
}

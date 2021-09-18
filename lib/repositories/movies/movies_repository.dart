import 'package:app_filmes_dart_week_4_edicao/models/movie_model.dart';

abstract class MoviesRepository {
  Future<List<MovieModel>> getPopularMovies();
  Future<List<MovieModel>> getTopRated();
}

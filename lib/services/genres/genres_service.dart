import 'package:app_filmes_dart_week_4_edicao/models/genre_model.dart';

abstract class GenresService {
  Future<List<GenreModel>> getGenres();
}

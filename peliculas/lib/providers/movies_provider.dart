import 'dart:async';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:peliculas/helpers/debouncer.dart';
import 'package:peliculas/models/models.dart';

class MoviesProvider extends ChangeNotifier {
  final String _baseUrl = 'api.themoviedb.org';
  final String _apiKey = '2e6c5dc50f862d1bd78344073f1a2176';
  final String _language = 'es-ES';
  List<Movie> onDisplayMovies = [];
  List<Movie> popularMovies = [];
  Map<int, List<Cast>> movieCast = {};

  int _popularPage = 0;

  final debouncer = Debouncer(
    duration: const Duration(seconds : 5),
  );

  final StreamController<List<Movie>> _sugestionStreamControler =
      StreamController.broadcast();
  Stream<List<Movie>> get sugestionStream => _sugestionStreamControler.stream;

  MoviesProvider() {
    getOnDistplayMovies();
    getPopularMovies();
  }

  Future<String> _getJsonData(String endpoint, [int page = 1]) async {
    final url = Uri.https(_baseUrl, '3/movie/$endpoint',
        {'api_key': _apiKey, 'language': _language, 'page': '$page'});
    final response = await http.get(url);
    return response.body;
  }

  getOnDistplayMovies() async {
    final jsonData = await _getJsonData('now_playing');
    final nowResponse = NowPlayingResponse.fromRawJson(jsonData);
    onDisplayMovies = nowResponse.results;
    notifyListeners();
  }

  getPopularMovies() async {
    _popularPage++;
    final jsonData = await _getJsonData('popular', _popularPage);
    final nowResponse = PopularResponse.fromRawJson(jsonData);
    popularMovies = [...popularMovies, ...nowResponse.results];
    notifyListeners();
  }

  Future<List<Cast>> getMovieCast(int movieId) async {
    if (movieCast.containsKey(movieId)) return movieCast[movieId]!;

    final jsonData = await _getJsonData('$movieId/credits');
    final creditResponse = CreditResponse.fromRawJson(jsonData);
    movieCast[movieId] = creditResponse.cast;
    return creditResponse.cast;
  }

  Future<List<Movie>> searchMovies(String query) async {
    final url = Uri.https(_baseUrl, '3/search/movie',
        {'api_key': _apiKey, 'language': _language, 'query': query});

    final response = await http.get(url);
    final movieSearch = SearchResponse.fromRawJson(response.body);
    return movieSearch.results;
  }

  void getSugestuinByQuery(String serchTerm) {
    debouncer.value = '';
    debouncer.onValue = (values) async {
      final result = await searchMovies(values);
      _sugestionStreamControler.add(result);
    };
    debouncer.restartTime(serchTerm);
  }
}

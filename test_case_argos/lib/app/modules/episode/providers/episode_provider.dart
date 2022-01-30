import 'package:get/get.dart';
import 'package:test_case_argos/app/data/models/episode.dart';
import 'package:test_case_argos/app/library/api_request.dart';

class EpisodeProvider extends GetConnect {
  static void getEpisodeList({
    Function()? beforeSend,
    Function(List<Episode> episodes)? onSuccess,
    Function(dynamic error)? onError,
  }) {
    ApiRequest(url: 'https://rickandmortyapi.com/api/episode', data: null).get(
      beforeSend: () => {if (beforeSend != null) beforeSend()},
      onSuccess: (data) {
        final results = data['results'];
        onSuccess!((results as List)
            .map((postJson) => Episode.fromJson(postJson))
            .toList());
      },
      onError: (error) => {if (onError != null) onError(error)},
    );
  }

  static void getEpisodeDetail({
    Function()? beforeSend,
    int? id,
    Function(Episode episodes)? onSuccess,
    Function(dynamic error)? onError,
  }) {
    ApiRequest(url: 'https://rickandmortyapi.com/api/episode/$id', data: null)
        .get(
      beforeSend: () => {if (beforeSend != null) beforeSend()},
      onSuccess: (data) {
        final results = data;
        onSuccess!(Episode.fromJson(results));
      },
      onError: (error) => {if (onError != null) onError(error)},
    );
  }
}

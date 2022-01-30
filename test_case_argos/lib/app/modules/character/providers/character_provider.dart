import 'package:get/get.dart';
import 'package:test_case_argos/app/data/models/character.dart';
import 'package:test_case_argos/app/library/api_request.dart';

class CharacterProvider extends GetConnect {
  static void getCharacterList({
    Function()? beforeSend,
    Function(List<Character> characters)? onSuccess,
    Function(dynamic error)? onError,
    required Map<String, dynamic>? params,
  }) {
    ApiRequest(url: 'https://rickandmortyapi.com/api/character', data: params)
        .get(
      beforeSend: () => {if (beforeSend != null) beforeSend()},
      onSuccess: (data) {
        final characters = data['results'];
        onSuccess!((characters as List)
            .map((postJson) => Character.fromJson(postJson))
            .toList());
      },
      onError: (error) => {if (onError != null) onError(error)},
    );
  }

  static void getCharacterDetail({
    Function()? beforeSend,
    int? id,
    Function(Character episodes)? onSuccess,
    Function(dynamic error)? onError,
  }) {
    print("cekUrl https://rickandmortyapi.com/api/character/$id");
    ApiRequest(url: 'https://rickandmortyapi.com/api/character/$id', data: null)
        .get(
      beforeSend: () => {if (beforeSend != null) beforeSend()},
      onSuccess: (data) {
        final results = data;
        onSuccess!(Character.fromJson(results));
      },
      onError: (error) => {if (onError != null) onError(error)},
    );
  }
}

import 'package:test_case_argos/app/data/models/character.dart';
import 'package:test_case_argos/app/library/api_request.dart';

class DashboardProvider {
  static void getCharacterList(
      {Function()? beforeSend,
      Function(List<Character> characters)? onSuccess,
      Function(dynamic error)? onError,
      required Map<String, dynamic>? params}) {
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
}

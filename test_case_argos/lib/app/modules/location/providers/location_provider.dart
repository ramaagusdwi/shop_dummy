import 'package:get/get.dart';
import 'package:test_case_argos/app/data/models/location.dart';
import 'package:test_case_argos/app/library/api_request.dart';

class LocationProvider extends GetConnect {
  static void getLocationList({
    Function()? beforeSend,
    Function(List<Location> locations)? onSuccess,
    Function(dynamic error)? onError,
  }) {
    ApiRequest(url: 'https://rickandmortyapi.com/api/location', data: null).get(
      beforeSend: () => {if (beforeSend != null) beforeSend()},
      onSuccess: (data) {
        final locationsRes = data['results'];
        onSuccess!((locationsRes as List)
            .map((postJson) => Location.fromJson(postJson))
            .toList());
      },
      onError: (error) => {if (onError != null) onError(error)},
    );
  }

  static void getLocationDetail({
    Function()? beforeSend,
    int? id,
    Function(Location location)? onSuccess,
    Function(dynamic error)? onError,
  }) {
    ApiRequest(url: 'https://rickandmortyapi.com/api/location/$id', data: null)
        .get(
      beforeSend: () => {if (beforeSend != null) beforeSend()},
      onSuccess: (data) {
        final results = data;
        onSuccess!(Location.fromJson(results));
      },
      onError: (error) => {if (onError != null) onError(error)},
    );
  }
}

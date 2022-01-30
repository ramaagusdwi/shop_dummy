import 'package:get/get.dart';

import 'package:test_case_argos/app/modules/character/bindings/character_binding.dart';
import 'package:test_case_argos/app/modules/character/views/character_view.dart';
import 'package:test_case_argos/app/modules/detail/bindings/detail_binding.dart';
import 'package:test_case_argos/app/modules/detail/views/detail_view.dart';
import 'package:test_case_argos/app/modules/detail_episode/bindings/detail_episode_binding.dart';
import 'package:test_case_argos/app/modules/detail_episode/views/detail_episode_view.dart';
import 'package:test_case_argos/app/modules/detail_location/bindings/detail_location_binding.dart';
import 'package:test_case_argos/app/modules/detail_location/views/detail_location_view.dart';
import 'package:test_case_argos/app/modules/episode/bindings/episode_binding.dart';
import 'package:test_case_argos/app/modules/episode/views/episode_view.dart';
import 'package:test_case_argos/app/modules/location/bindings/location_binding.dart';
import 'package:test_case_argos/app/modules/location/views/location_view.dart';
import 'package:test_case_argos/app/modules/main_page/bindings/dashboard_binding.dart';
import 'package:test_case_argos/app/modules/main_page/views/main_view.dart';
import 'package:test_case_argos/app/modules/on_board/bindings/on_board_binding.dart';
import 'package:test_case_argos/app/modules/on_board/views/on_board_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.FRONT;

  static final routes = [
    GetPage(
      name: _Paths.MAINPAGE,
      page: () => DashboardView(),
      binding: DashboardBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARD,
      page: () => OnBoardView(),
      binding: OnBoardBinding(),
    ),
    GetPage(
      name: _Paths.CHARACTER,
      page: () => CharacterView(),
      binding: CharacterBinding(),
    ),
    GetPage(
      name: _Paths.LOCATION,
      page: () => LocationView(),
      binding: LocationBinding(),
    ),
    GetPage(
      name: _Paths.EPISODE,
      page: () => EpisodeView(),
      binding: EpisodeBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL,
      page: () => DetailView(),
      binding: DetailBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_LOCATION,
      page: () => DetailLocationView(),
      binding: DetailLocationBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_EPISODE,
      page: () => DetailEpisodeView(),
      binding: DetailEpisodeBinding(),
    ),
  ];
}

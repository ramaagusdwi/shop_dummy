import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:test_case_argos/app/views/views/intro_second_view.dart';
import 'package:test_case_argos/app/views/views/intro_view.dart';

import '../controllers/on_board_controller.dart';

class OnBoardView extends GetView<OnBoardController> {
  @override
  Widget build(BuildContext context) {
    return PageView(children: <Widget>[IntroView(), IntroSecondView()]);
  }
}

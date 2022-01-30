import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:test_case_argos/app/modules/components/form_search_widget.dart';
import 'package:test_case_argos/app/modules/components/loading_overlay.dart';
import 'package:test_case_argos/app/modules/character/views/character_section_view.dart';

import '../controllers/character_controller.dart';

class CharacterView extends GetView<CharacterController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: FormSearchWidget(
            hintText: 'Search Character',
            onChanged: (text) {
              log("Character - listener user type! $text");
              controller.onFilter(name: text);
            },
          ),
        ),
        Expanded(
          flex: 6,
          child: Container(
            child: Obx(() {
              if (controller.isReady) {
                return LoadingOverlay(
                  isLoading: controller.isLoading,
                  child: GridView.count(
                      primary: false,
                      // padding: const EdgeInsets.all(20),
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                      crossAxisCount: 2,
                      children: [
                        for (int i = 0;
                            i < controller.characterList.length;
                            i++)
                          CharacterSectionView(
                            character: controller.characterList[i],
                          )
                      ]),
                );
              } else {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            }),
          ),
        ),
      ],
    );
  }
}

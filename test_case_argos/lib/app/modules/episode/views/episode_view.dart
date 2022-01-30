import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:test_case_argos/app/modules/components/form_search_widget.dart';
import 'package:test_case_argos/app/modules/components/loading_overlay.dart';

import '../controllers/episode_controller.dart';
import 'episode_section_view.dart';

class EpisodeView extends GetView<EpisodeController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: FormSearchWidget(
            hintText: 'Search Episode',
            onChanged: (text) {
              log("Episode - listener user type! $text");
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
                        for (int i = 0; i < controller.episodeList.length; i++)
                          EpisodeSectionView(
                            episode: controller.episodeList[i],
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

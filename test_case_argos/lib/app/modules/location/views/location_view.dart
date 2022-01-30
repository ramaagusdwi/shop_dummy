import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:test_case_argos/app/modules/components/form_search_widget.dart';
import 'package:test_case_argos/app/modules/components/loading_overlay.dart';
import 'package:test_case_argos/app/modules/location/views/location_section_view.dart';

import '../controllers/location_controller.dart';

class LocationView extends GetView<LocationController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: FormSearchWidget(
            hintText: 'Search Location',
            onChanged: (text) {
              log("Location - listener user type! $text");
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
                        for (int i = 0; i < controller.locationList.length; i++)
                          LocationSectionView(
                            location: controller.locationList[i],
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

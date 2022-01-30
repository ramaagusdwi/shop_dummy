import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:test_case_argos/app/modules/main_page/views/main_view.dart';

class IntroSecondView extends GetView {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
      onPrimary: Colors.black87,
      primary: Colors.amber[600]!,
      minimumSize: Size(380, 66),
      padding: EdgeInsets.symmetric(horizontal: 16),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
    );

    return Scaffold(
      body: Center(
          child: Stack(
        alignment: Alignment.center,
        children: [
          Image(
            image: const AssetImage(
              'assets/images/unsplash.jpg',
            ),
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
          ),
          Positioned(
            bottom: 20,
            child: Card(
                elevation: 20,
                color: Color(0xFFFFFF).withOpacity(0.8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35),
                ),
                child: SizedBox(
                  width: 80.w,
                  height: 35.h,
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 17,
                        ),
                        Text(
                          "Digital",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 30,
                              color: Colors.black),
                        ),
                        Text(
                          "Grocery Store",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 30,
                              color: Colors.amber[600]),
                        ),
                        SizedBox(
                          height: 17,
                        ),
                        SizedBox(
                          height: 17,
                        ),
                        Text(
                          'The most cheapest cheep grocery store',
                          maxLines: 2,
                          overflow: TextOverflow.visible,
                          style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 17,
                              color: Colors.grey),
                        ),
                        SizedBox(
                          height: 27,
                        ),
                        ElevatedButton(
                            style: raisedButtonStyle,
                            onPressed: () {
                              Get.off(DashboardView());
                            },
                            child: Text(
                              'SHOP NOW',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17,
                                  color: Colors.white),
                            ))
                      ],
                    ),
                  ),
                )),
          ),
        ],
      )),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class IntroView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Stack(
        alignment: Alignment.center,
        children: [
          Image(
            image: AssetImage(
              'assets/images/rezel.jpg',
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
                        Text(
                          "Welcome Back to!",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 30,
                              color: Colors.black),
                        ),
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
                          "The most complete cheep grocery store",
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

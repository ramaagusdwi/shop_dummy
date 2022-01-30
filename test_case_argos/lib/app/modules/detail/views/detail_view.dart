import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:test_case_argos/app/modules/components/button_add_to_cart.dart';

import '../controllers/detail_controller.dart';

class DetailView extends GetView<DetailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        return controller.isLoading
            ? Center(child: CircularProgressIndicator())
            : SafeArea(
                child: Container(
                  margin: EdgeInsets.only(top: 6, left: 24, right: 24),
                  child: Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              buildBackButton(),
                              buildRightButton(),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(26.0),
                                topRight: Radius.circular(26.0),
                                bottomLeft: Radius.circular(26.0),
                                bottomRight: Radius.circular(26.0)),
                            child: controller.argumentData[0]['flag'] ==
                                    "character"
                                ? Image(
                                    width: double.infinity,
                                    height:
                                        (MediaQuery.of(context).size.height) *
                                            0.45,
                                    image: NetworkImage(controller.urlImage),
                                    fit: BoxFit.fill,
                                  )
                                : Image(
                                    width: double.infinity,
                                    height:
                                        (MediaQuery.of(context).size.height) *
                                            0.45,
                                    image: AssetImage(controller.urlImage),
                                    fit: BoxFit.fill,
                                  ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  buildRow(controller.label1, controller.data1),
                                  buildRow(controller.label2, controller.data2),
                                  buildRow(controller.label3, controller.data3),
                                  buildRow(controller.label4, controller.data4),
                                  Expanded(
                                    flex: 2,
                                    child: Align(
                                      alignment: FractionalOffset.bottomCenter,
                                      child: Padding(
                                          padding:
                                              EdgeInsets.only(bottom: 10.0),
                                          child: ButtonAddToCart(
                                            onPressed: () {
                                              print("pressed");
                                            },
                                          ) //Your widget here,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      Positioned(
                        top: 46.h,
                        left: 55.w,
                        right: -5.w,
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 16),
                          child: Card(
                              elevation: 20,
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Container(
                                height: 130,
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    children: [
                                      Text(
                                        "1/Kg \$10",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                            color: Colors.black),
                                      ),
                                      SizedBox(
                                        height: 3.h,
                                      ),
                                      Stack(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                                color: Colors.grey,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(5))),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(4.0),
                                              child: Center(
                                                child: Text(
                                                  "1",
                                                  maxLines: 1,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      fontSize: 20,
                                                      color: Colors.black),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Positioned.fill(
                                              child: Align(
                                            alignment: Alignment.topLeft,
                                            child: buildMinusButton(),
                                          )),
                                          Positioned.fill(
                                              child: Align(
                                            alignment: Alignment.topRight,
                                            child: buildTambahButton(),
                                          )),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
              );
      }),
    );
  }

  Expanded buildRow(String textDataLeft, String textDataRight) {
    return Expanded(
      child: Row(
        children: [
          textDataLeft == "Name"
              ? Container()
              : Text(
                  "$textDataLeft : ",
                  style: TextStyle(
                      color: Colors.grey[800],
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                      letterSpacing: 1.0,
                      height: 1.4),
                ),
          Text(
            textDataRight,
            style: TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.bold,
                fontSize: 20,
                letterSpacing: 1.0,
                height: 1.4),
          ),
        ],
      ),
    );
  }

  Container buildRightButton() {
    return Container(
      height: 6.h,
      width: 5.h,
      decoration: BoxDecoration(
        color: Colors.blueGrey[100],
        shape: BoxShape.circle,
      ),
      child: Icon(
        Icons.subject,
        color: Colors.black,
        size: 16,
      ),
    );
  }

  Container buildBackButton() {
    return Container(
      height: 6.h,
      width: 5.h,
      decoration: BoxDecoration(
        color: Colors.blueGrey[100],
        shape: BoxShape.circle,
      ),
      child: Icon(
        Icons.arrow_back_ios_rounded,
        color: Colors.black,
        size: 16,
      ),
    );
  }

  Container buildMinusButton() {
    return Container(
        decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.all(Radius.circular(5))),
        child: Icon(
          Icons.remove,
          color: Colors.white,
          size: 30.0,
        ));
  }

  Container buildTambahButton() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.all(Radius.circular(5))),
      child: Icon(
        Icons.add,
        color: Colors.white,
        size: 30.0,
      ),
    );
  }

  Container buildGreyContainer() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.all(Radius.circular(0))),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Center(
          child: Text(
            "1",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 20,
                color: Colors.black),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detail_location_controller.dart';
import 'package:test_case_argos/app/modules/components/button_add_to_cart.dart';

class DetailLocationView extends GetView<DetailLocationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              color: Color(0xffF8FAFB),
            ),
            Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50.0),
                      bottomRight: Radius.circular(50.0)),
                  child: Image(
                    width: double.infinity,
                    height: (MediaQuery.of(context).size.height) * 0.45,
                    image: AssetImage('assets/images/placeholder.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Text(
                                "Name : ",
                                style: TextStyle(
                                    color: Colors.grey[850],
                                    fontWeight: FontWeight.normal,
                                    fontSize: 20,
                                    letterSpacing: 1.0,
                                    height: 1.4),
                              ),
                              Text(
                                controller.location.name!,
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    letterSpacing: 1.0,
                                    height: 1.4),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Text(
                                "Type : ",
                                style: TextStyle(
                                    color: Colors.grey[850],
                                    fontWeight: FontWeight.normal,
                                    fontSize: 20,
                                    letterSpacing: 1.0,
                                    height: 1.4),
                              ),
                              Text(
                                controller.location.type!,
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    letterSpacing: 1.0,
                                    height: 1.4),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Text(
                                "Dimension : ",
                                style: TextStyle(
                                    color: Colors.grey[850],
                                    fontWeight: FontWeight.normal,
                                    fontSize: 20,
                                    letterSpacing: 1.0,
                                    height: 1.4),
                              ),
                              Flexible(
                                child: Text(
                                  controller.location.dimension!,
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      letterSpacing: 1.0,
                                      overflow: TextOverflow.ellipsis,
                                      height: 1.4),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            children: [
                              Text(
                                "Created At : ",
                                style: TextStyle(
                                    color: Colors.grey[850],
                                    fontWeight: FontWeight.normal,
                                    fontSize: 20,
                                    letterSpacing: 1.0,
                                    height: 1.4),
                              ),
                              Flexible(
                                child: Text(
                                  controller.outputDate,
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      letterSpacing: 1.0,
                                      overflow: TextOverflow.ellipsis,
                                      height: 1.4),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: FractionalOffset.bottomCenter,
                            child: Padding(
                                padding: EdgeInsets.only(bottom: 10.0),
                                child: ButtonAddToCart(
                                  onPressed: () {
                                    print("pressed");
                                  },
                                ) //Your widget here,
                                ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Positioned(
              top: 315,
              left: 0,
              right: 0,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: Card(
                    elevation: 20,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      height: 110,
                      child: Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [],
                        ),
                      ),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

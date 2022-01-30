import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_case_argos/app/modules/character/views/character_view.dart';
import 'package:test_case_argos/app/modules/components/circle_widget.dart';
import 'package:test_case_argos/app/modules/episode/views/episode_view.dart';
import 'package:test_case_argos/app/modules/location/views/location_view.dart';

import '../controllers/main_controller.dart';

class DashboardView extends GetView<DashboardController> {
  @override
  Widget build(BuildContext context) {
    List<String> listTab = ["Character", "Location", "Episode"];
    List<Widget> listTabView = [CharacterView(), LocationView(), EpisodeView()];

    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 24.0, left: 24.0, right: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildCustomAppBar(),
              SizedBox(
                height: 16,
              ),
              Expanded(
                child: DefaultTabController(
                  length: listTab.length,
                  child: Column(
                    children: <Widget>[
                      ButtonsTabBar(
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        backgroundColor: Colors.white,
                        unselectedBackgroundColor: Color(0xFFDBDDE5),
                        labelStyle: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                        unselectedLabelStyle: TextStyle(
                            color: Color(0xFFA2A7C3),
                            fontWeight: FontWeight.normal),
                        unselectedBorderColor: Colors.white,
                        radius: 30,
                        buttonMargin: EdgeInsets.symmetric(horizontal: 10),
                        tabs: listTab
                            .map((item) => Tab(
                                  text: item,
                                ))
                            .toList(),
                      ),
                      Expanded(
                        child: TabBarView(children: listTabView),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Row buildCustomAppBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Expanded(
        //   child:
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Welcome Back",
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                )),
            Text("Samantha William",
                style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                )),
          ],
        ),
        // ),
        Stack(
          clipBehavior: Clip.none,
          children: [
            const Icon(
              Icons.shopping_cart,
              color: Colors.black,
              size: 24.0,
            ),
            Positioned(
              top: -10,
              right: -8,
              child: CircleWidget(
                  child: Center(
                    child: Text(
                      "0",
                      style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 10,
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  colorArgs: Colors.red,
                  size: 16),
            ),
          ],
        ),
      ],
    );
  }

  // Padding buildSearch() {
  //   return Padding(
  //     padding: EdgeInsets.all(8.0),
  //     child: TextFormField(
  //       decoration: InputDecoration(
  //           fillColor: Colors.grey.withOpacity(0.24),
  //           filled: true,
  //           prefixIcon: const Icon(
  //             Icons.search,
  //             color: Colors.black,
  //           ),
  //           suffixIcon: Icon(
  //             Icons.filter_list_sharp,
  //             color: Colors.black,
  //             size: 24.0,
  //           ),
  //           border: OutlineInputBorder(
  //             borderRadius: const BorderRadius.all(
  //               Radius.circular(20),
  //             ),
  //             borderSide: BorderSide(
  //                 color: Color(0xFFDBDDE5).withOpacity(0.24), width: 0),
  //           ),
  //           enabledBorder: OutlineInputBorder(
  //             borderRadius: const BorderRadius.all(
  //               Radius.circular(20),
  //             ),
  //             borderSide: BorderSide(
  //                 color: Color(0xFFDBDDE5).withOpacity(0.24), width: 0),
  //           ),
  //           focusedBorder: OutlineInputBorder(
  //             borderRadius: const BorderRadius.all(
  //               Radius.circular(20),
  //             ),
  //             borderSide:
  //                 BorderSide(color: Colors.grey.withOpacity(0.24), width: 0),
  //           ),
  //           hintText: 'Saerching product',
  //           hintStyle: TextStyle(color: Color(0xFFA2A7C3)),
  //           labelStyle: TextStyle(color: Color(0xFFA2A7C3)),
  //           focusColor: Colors.black),
  //       onChanged: (v) {
  //         // state.searchData(v);
  //         // state.runFilter(v);
  //       },
  //     ),
  //   );
  // }
}

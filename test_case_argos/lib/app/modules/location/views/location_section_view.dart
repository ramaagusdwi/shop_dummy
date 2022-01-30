import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_case_argos/app/data/models/location.dart';
import 'package:test_case_argos/app/routes/app_pages.dart';

class LocationSectionView extends StatelessWidget {
  late Location location;

  LocationSectionView({Key? key, required this.location}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // log("cekDataItem $character");
    return InkWell(
      onTap: () {
        log("cekTapDataItem $location");
        // Navigation.intentWithData(ProductDetailPage.route, data);
        // Get.toNamed(Routes.DETAIL_LOCATION, arguments: location);
        Get.toNamed(
          Routes.DETAIL,
          arguments: [
            {"flag": 'location'},
            {"id": location.id}
          ],
        );
      },
      child: Card(
        elevation: 2,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
        child: Container(
          width: MediaQuery.of(context).size.width *
              0.35, //width based on 35 percent from size device / phone
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Stack(
                  // fit: StackFit.expand,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Container(
                        width: double.infinity,
                        height: 120,
                        decoration: BoxDecoration(
                          // shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage(
                                'assets/images/placeholder.png',
                              ),
                              fit: BoxFit.fill),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  width: 164,
                  padding: const EdgeInsets.all(6.0),
                  decoration: const BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.zero,
                      topRight: Radius.zero,
                      bottomLeft: Radius.circular(14.0),
                      bottomRight: Radius.circular(14.0),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${location.name}",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 11,
                            color: Colors.black),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "1/Kg \$10",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 11,
                                color: Colors.black),
                          ),
                          //build  icon tambah
                          buildTambahButton()
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container buildTambahButton() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.amber[800]!,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Icon(
        Icons.add,
        color: Colors.white,
        size: 30.0,
      ),
    );
  }
}

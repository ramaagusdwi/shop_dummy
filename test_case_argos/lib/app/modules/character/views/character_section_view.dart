import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:test_case_argos/app/data/models/character.dart';
import 'package:test_case_argos/app/routes/app_pages.dart';

class CharacterSectionView extends StatelessWidget {
  late Character character;

  CharacterSectionView({Key? key, required this.character}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // log("cekDataItem $character");
    return InkWell(
      onTap: () {
        log("cekTapDataItem $character");
        // Get.toNamed(
        //   Routes.DETAIL,
        //   arguments: character,
        // );
        Get.toNamed(
          Routes.DETAIL,
          arguments: [
            {"flag": 'character'},
            {"id": character.id}
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
                          child: (character.image != null)
                              ? CachedNetworkImage(
                                  imageUrl: character.image!,
                                  imageBuilder: (context, imageProvider) =>
                                      Container(
                                    decoration: BoxDecoration(
                                      // shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: imageProvider,
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                  placeholder: (context, url) =>
                                      CircularProgressIndicator(),
                                  errorWidget: (context, url, error) {
                                    log(url.toString());
                                    return Icon(Icons.error);
                                  },
                                )
                              : Container(),
                        )),
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
                        "${character.name}",
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

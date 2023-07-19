import "package:flutter/material.dart";

import "../theme.dart";

class FacilityItem extends StatelessWidget {
  final String imageUrl;
  final int valueOfFacility;
  final String nameFacility;

  const FacilityItem(
      {required this.imageUrl,
      required this.nameFacility,
      required this.valueOfFacility,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          imageUrl,
          height: 32,
        ),
        const SizedBox(
          height: 8,
        ),
        Text.rich(TextSpan(
            text: '$valueOfFacility',
            style: purpleTextStyleMedium.copyWith(fontSize: 14),
            children: [
              TextSpan(
                  text: ' $nameFacility',
                  style: blackTextStyleRegular.copyWith(
                      fontWeight: FontWeight.w300, fontSize: 14))
            ]))
      ],
    );
  }
}

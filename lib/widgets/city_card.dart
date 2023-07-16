import "package:flutter/material.dart";
import "package:mockup_cozy_app/models/city.dart";
import "package:mockup_cozy_app/theme.dart";

class CityCard extends StatelessWidget {
  final City city;

  const CityCard(this.city, {super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Container(
        color: greyBackgroundColor,
        height: 150,
        width: 120,
        child: Column(children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              Image.asset(
                city.imageUrl,
                height: 102,
                width: 120,
                fit: BoxFit.fill,
              ),
              city.isWishList
                  ? Container(
                      alignment: Alignment.center,
                      width: 50,
                      height: 30,
                      decoration: BoxDecoration(
                          color: purpleColor,
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(36))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            width: 5,
                          ),
                          Image.asset(
                            'assets/images/star_orange.png',
                            scale: 4,
                          ),
                        ],
                      ),
                    )
                  : Container()
            ],
          ),
          const SizedBox(
            height: 11,
          ),
          Text(
            city.cityName,
            style: blackTextStyleMedium.copyWith(fontSize: 16),
          )
        ]),
      ),
    );
  }
}

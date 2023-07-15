import "package:flutter/material.dart";
import "package:mockup_cozy_app/theme.dart";
import "package:mockup_cozy_app/widgets/city_card.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      body: SafeArea(
          child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 24, left: edgeLeft),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Explore Now',
                  style: blackTextStyleMedium.copyWith(fontSize: 24),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  'Mencari kosan yang cozy',
                  style: greyTextStyleRegular.copyWith(
                      fontWeight: FontWeight.w300, fontSize: 16),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'Popular Cities',
                  style: blackTextStyleRegular.copyWith(fontSize: 16),
                ),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 150,
                  child: ListView(
                    children: const [CityCard()],
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}

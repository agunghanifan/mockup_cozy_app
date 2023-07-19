import "package:flutter/material.dart";
import "package:mockup_cozy_app/models/city.dart";
import "package:mockup_cozy_app/models/tip.dart";
import "package:mockup_cozy_app/providers/space_provider.dart";
import "package:mockup_cozy_app/theme.dart";
import "package:mockup_cozy_app/widgets/bottom_navbar_item.dart";
import "package:mockup_cozy_app/widgets/city_card.dart";
import "package:mockup_cozy_app/widgets/tips_card.dart";
import "package:provider/provider.dart";

import "../models/space.dart";
import "../widgets/space_card.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var spaceProvider = Provider.of<SpaceProvider>(context);
    // spaceProvider.getRecommendedSpaces(); // for debugging check data

    return Scaffold(
      backgroundColor: whiteColor,
      key: key,
      body: SafeArea(
          bottom: false,
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 24, left: edge, right: edge),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //! Title / Header
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

                    //! Popular Cities section
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
                        scrollDirection: Axis.horizontal,
                        children: [
                          CityCard(
                            City(
                                idCity: 1,
                                cityName: 'Jakarta',
                                imageUrl: 'assets/images/popular_1.png',
                                isWishList: false),
                            key: key,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          CityCard(
                            City(
                                idCity: 2,
                                cityName: 'Bandung',
                                imageUrl: 'assets/images/popular_2.png',
                                isWishList: true),
                            key: key,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          CityCard(
                            City(
                                idCity: 3,
                                cityName: 'Surabaya',
                                imageUrl: 'assets/images/popular_3.png',
                                isWishList: false),
                            key: key,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          CityCard(
                            City(
                                idCity: 3,
                                cityName: 'Palembang',
                                imageUrl: 'assets/images/popular_4.png',
                                isWishList: false),
                            key: key,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          CityCard(
                            City(
                                idCity: 3,
                                cityName: 'Bogor',
                                imageUrl: 'assets/images/popular_5.png',
                                isWishList: true),
                            key: key,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),

                    //! Recommended Space section
                    Text(
                      'Recommended Space',
                      style: blackTextStyleRegular.copyWith(fontSize: 16),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    FutureBuilder<List<Space>>(
                      future: spaceProvider.getRecommendedSpaces(),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return Column(
                            children: snapshot.data!
                                .map((item) => SpaceCard(item))
                                .toList(),
                          );
                        } else {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                      },
                    ),
                    Text(
                      'Tips & Guidance',
                      style: blackTextStyleRegular.copyWith(fontSize: 16),
                    ),
                    const SizedBox(
                      height: 16,
                    ),

                    //! Tips & Guidance section
                    TipsCard(
                      Tip(
                          idTip: 1,
                          tipName: 'City Guidelines',
                          imageUrl: 'assets/images/tips_1.png',
                          dateUpdated: DateTime(2023, 4, 20, 0, 0)),
                      key: key,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TipsCard(
                      Tip(
                          idTip: 2,
                          tipName: 'Jakarta Fairship',
                          imageUrl: 'assets/images/tips_2.png',
                          dateUpdated: DateTime(2023, 12, 11, 0, 0)),
                      key: key,
                    ),
                    SizedBox(
                      height: 70 + edge,
                    ),
                  ],
                ),
              )
            ],
          )),
      floatingActionButton:
          //! Home Bottom Bar
          Container(
        height: 65,
        decoration: BoxDecoration(
            color: greyBackgroundColor,
            // color: Colors.lightGreen, // for debugging
            borderRadius: BorderRadius.circular(23)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavbarItem(
              imageUrl: 'assets/images/icon_home_solid.png',
              isActive: true,
              key: key,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/images/icon_mail_solid.png',
              isActive: false,
              key: key,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/images/icon_card_solid.png',
              isActive: false,
              key: key,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/images/icon_love_solid.png',
              isActive: false,
              key: key,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

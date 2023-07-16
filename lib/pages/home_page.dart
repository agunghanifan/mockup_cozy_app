import "package:flutter/material.dart";
import "package:mockup_cozy_app/models/city.dart";
import "package:mockup_cozy_app/models/space.dart";
import "package:mockup_cozy_app/models/tip.dart";
import "package:mockup_cozy_app/theme.dart";
import "package:mockup_cozy_app/widgets/bottom_navbar_item.dart";
import "package:mockup_cozy_app/widgets/city_card.dart";
import "package:mockup_cozy_app/widgets/space_card.dart";
import "package:mockup_cozy_app/widgets/tips_card.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      body: SafeArea(
          bottom: false,
          child: ListView(
            children: [
              Padding(
                padding:
                    EdgeInsets.only(top: 24, left: edgeLeft, right: edgeLeft),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //* Title / Header
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

                    //* Popular Cities section
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
                      width: 30,
                    ),

                    //* Recommended Space section
                    Text(
                      'Recommended Space',
                      style: blackTextStyleRegular.copyWith(fontSize: 16),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Column(
                      children: [
                        SpaceCard(
                          Space(
                              idSpace: 1,
                              spaceName: 'Kuretakoso Hott',
                              price: 52,
                              location: 'Bandung, Germany',
                              imageUrl: 'assets/images/home_1.png',
                              rating: 4),
                          key: key,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        SpaceCard(
                          Space(
                              idSpace: 2,
                              spaceName: 'Roemah Kakek',
                              price: 12,
                              location: 'Seattle, Bogor',
                              imageUrl: 'assets/images/home_2.png',
                              rating: 5),
                          key: key,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        SpaceCard(Space(
                            idSpace: 3,
                            spaceName: 'How Darling',
                            price: 20,
                            location: 'Jakarta, Indonesia',
                            imageUrl: 'assets/images/home_3.png',
                            rating: 3)),
                        const SizedBox(
                          height: 30,
                        ),
                        SpaceCard(Space(
                            idSpace: 4,
                            spaceName: 'Orang Crown',
                            price: 522,
                            location: 'Halla, Sumatra',
                            imageUrl: 'assets/images/home_4.png',
                            rating: 5)),
                        const SizedBox(
                          height: 30,
                        ),
                        SpaceCard(Space(
                            idSpace: 5,
                            spaceName: 'City of Status',
                            price: 20,
                            location: 'Jakarta, Indonesia',
                            imageUrl: 'assets/images/home_5.png',
                            rating: 3))
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Tips & Guidance',
                      style: blackTextStyleRegular.copyWith(fontSize: 16),
                    ),
                    const SizedBox(
                      height: 16,
                    ),

                    //* Tips & Guidance section
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
                    const SizedBox(
                      height: 50,
                    ),

                    //* Home Bottom Bar
                    Container(
                      height: 65,
                      decoration: BoxDecoration(
                          // color: greyBackgroundColor,
                          color: Colors.lightGreen,
                          borderRadius: BorderRadius.circular(23)),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          BottomNavbarItem(),
                          BottomNavbarItem(),
                          BottomNavbarItem(),
                          BottomNavbarItem(),
                        ],
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

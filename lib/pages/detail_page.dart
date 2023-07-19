import "package:flutter/material.dart";
import "package:mockup_cozy_app/theme.dart";
import "package:mockup_cozy_app/widgets/facility_item.dart";
import "package:url_launcher/url_launcher.dart";

import "../services/custom_handling_error.dart";

class DetailPage extends StatelessWidget {
  final Uri _urlMap = Uri.parse(urlMap);
  final Uri _urlPhone = Uri.parse(urlPhone);

  DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    launchUrlCostum(url) {
      canLaunchUrl(url).then((value) => {
            if (!value)
              {const CustomHandlingError().pushToNotFoundPage(context)}
          });
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: Stack(
          key: key,
          children: [
            //! Big Image
            Image.asset(
              'assets/images/pic.png',
              width: MediaQuery.of(context).size.width,
              height: 350,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 30,
            ),

            //! Card
            ListView(
              children: [
                const SizedBox(
                  height: 328,
                ),
                Container(
                  key: key,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius:
                          const BorderRadius.vertical(top: Radius.circular(20)),
                      color: whiteColor),
                  child: Padding(
                    padding: EdgeInsets.only(top: 30, left: edge, right: edge),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //! Title Card with star
                          Row(children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Kuretakeso Hott',
                                  style: blackTextStyleMedium.copyWith(
                                      fontSize: 22),
                                ),
                                Text.rich(TextSpan(
                                    text: '\$52',
                                    style: purpleTextStyleMedium.copyWith(
                                        fontSize: 16),
                                    children: [
                                      TextSpan(
                                          text: ' / month',
                                          style: greyTextStyleRegular.copyWith(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w300))
                                    ])),
                              ],
                            ),
                            const Spacer(),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/star_orange.png',
                                  width: 20,
                                ),
                                const SizedBox(
                                  width: 2,
                                ),
                                Image.asset(
                                  'assets/images/star_orange.png',
                                  width: 20,
                                ),
                                const SizedBox(
                                  width: 2,
                                ),
                                Image.asset(
                                  'assets/images/star_orange.png',
                                  width: 20,
                                ),
                                const SizedBox(
                                  width: 2,
                                ),
                                Image.asset(
                                  'assets/images/star_orange.png',
                                  width: 20,
                                ),
                                const SizedBox(
                                  width: 2,
                                ),
                                Image.asset(
                                  'assets/images/star_orange.png',
                                  width: 20,
                                  color: const Color(0xff989BA1),
                                ),
                              ],
                            )
                          ]),
                          const SizedBox(
                            height: 30,
                          ),

                          //! Main Facilities
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Main Facilities',
                                style: blackTextStyleRegular.copyWith(
                                    fontSize: 16),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  FacilityItem(
                                    imageUrl: 'assets/images/icon_kitchen.png',
                                    valueOfFacility: 2,
                                    nameFacility: 'kitchen',
                                  ),
                                  FacilityItem(
                                    imageUrl: 'assets/images/icon_bed.png',
                                    valueOfFacility: 3,
                                    nameFacility: 'bedroom',
                                  ),
                                  FacilityItem(
                                    imageUrl: 'assets/images/icon_wardrobe.png',
                                    valueOfFacility: 3,
                                    nameFacility: 'Big Lemari',
                                  ),
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),

                          //! Photos
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Photos',
                                style: blackTextStyleRegular.copyWith(
                                    fontSize: 16),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              SizedBox(
                                height: 88,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    Image.asset(
                                      'assets/images/details_galery_1.png',
                                      width: 110,
                                      fit: BoxFit.fill,
                                    ),
                                    const SizedBox(
                                      width: 18,
                                    ),
                                    Image.asset(
                                        'assets/images/details_galery_2.png'),
                                    const SizedBox(
                                      width: 18,
                                    ),
                                    Image.asset(
                                        'assets/images/details_galery_3.png'),
                                    const SizedBox(
                                      width: 18,
                                    ),
                                    Image.asset(
                                        'assets/images/details_galery_4.png'),
                                    const SizedBox(
                                      width: 18,
                                    ),
                                    Image.asset(
                                        'assets/images/details_galery_5.png'),
                                  ],
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),

                          //! Location
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Location',
                                style: blackTextStyleRegular.copyWith(
                                    fontSize: 16),
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Jln. Kappan Sukses No. 20\nPalembang',
                                    style: greyTextStyleRegular.copyWith(
                                        fontSize: 14),
                                  ),
                                  InkWell(
                                    onTap: () async {
                                      launchUrlCostum(_urlMap);
                                    },
                                    child: Image.asset(
                                      'assets/images/icon_map.png',
                                      height: 40,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 40,
                              ),

                              //! Button Book Now
                              SizedBox(
                                  height: 50,
                                  width: MediaQuery.of(context).size.width,
                                  child: ElevatedButton(
                                    onPressed: () async {
                                      //* for negative case, to 404 page
                                      launchUrlCostum(_urlPhone);
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: purpleColor,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(17)),
                                    ),
                                    child: Text(
                                      'Book Now',
                                      style: whiteTextStyleMedium.copyWith(
                                          fontSize: 18),
                                    ),
                                  )),
                              const SizedBox(
                                height: 40,
                              )
                            ],
                          )
                        ]),
                  ),
                )
              ],
            )
            //! Navigation
            ,
            Padding(
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: edge),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'assets/images/btn_back.png',
                      height: 40,
                    ),
                  ),
                  Image.asset('assets/images/btn_wishlist.png', height: 40),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

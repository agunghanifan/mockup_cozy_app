import "package:flutter/material.dart";
import "package:mockup_cozy_app/theme.dart";
import "package:mockup_cozy_app/widgets/facility_item.dart";
import "package:mockup_cozy_app/widgets/rating_item.dart";
import "package:url_launcher/url_launcher.dart";

import "../models/space.dart";
import "../services/custom_handling_error.dart";

class DetailPage extends StatefulWidget {
  final Space space;

  const DetailPage({required this.space, super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool _isFavourite = false;

  @override
  Widget build(BuildContext context) {
    launchUrlCostum(Uri url) {
      canLaunchUrl(url).then((value) => {
            if (value)
              {launchUrl(url)}
            else
              {const CustomHandlingError().pushToNotFoundPage(context)}
          });
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: Stack(
          key: widget.key,
          children: [
            //! Big Image
            Image.network(
              widget.space.imageUrl,
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
                  key: widget.key,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius:
                          const BorderRadius.vertical(top: Radius.circular(20)),
                      color: whiteColor),
                  child: Padding(
                    padding: EdgeInsets.only(top: 30, left: edge),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //! Title Card with star
                          Padding(
                            padding: EdgeInsets.only(right: edge),
                            child: Row(children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    widget.space.name,
                                    style: blackTextStyleMedium.copyWith(
                                        fontSize: 22),
                                  ),
                                  Text.rich(TextSpan(
                                      text: '\$${widget.space.price}',
                                      style: purpleTextStyleMedium.copyWith(
                                          fontSize: 16),
                                      children: [
                                        TextSpan(
                                            text: ' / month',
                                            style:
                                                greyTextStyleRegular.copyWith(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w300))
                                      ])),
                                ],
                              ),
                              const Spacer(),
                              Row(
                                children: [0, 1, 2, 3, 4]
                                    .map((item) => Padding(
                                          padding:
                                              const EdgeInsets.only(left: 2),
                                          child: RatingItem(
                                              index: item,
                                              rating: widget.space.rating),
                                        ))
                                    .toList(),
                              )
                            ]),
                          ),
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
                              Padding(
                                padding: EdgeInsets.only(right: edge),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    FacilityItem(
                                      imageUrl:
                                          'assets/images/icon_kitchen.png',
                                      valueOfFacility:
                                          widget.space.numberOfKitchens,
                                      nameFacility: 'kitchen',
                                    ),
                                    FacilityItem(
                                      imageUrl: 'assets/images/icon_bed.png',
                                      valueOfFacility:
                                          widget.space.numberOfBedrooms,
                                      nameFacility: 'bedroom',
                                    ),
                                    FacilityItem(
                                      imageUrl:
                                          'assets/images/icon_wardrobe.png',
                                      valueOfFacility:
                                          widget.space.numberOfCupboards,
                                      nameFacility: 'Big Lemari',
                                    ),
                                  ],
                                ),
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
                                    children: widget.space.photos
                                        .map(
                                          (item) => Container(
                                            margin: const EdgeInsets.only(
                                                right: 18),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(16),
                                              child: Image.network(
                                                item,
                                                width: 110,
                                                fit: BoxFit.fill,
                                                errorBuilder: (context, error,
                                                    stackTrace) {
                                                  return Container();
                                                },
                                              ),
                                            ),
                                          ),
                                        )
                                        .toList()),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 30,
                          ),

                          //! Location
                          Padding(
                            padding: EdgeInsets.only(right: edge),
                            child: Column(
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
                                      '${widget.space.address}\n${widget.space.city}',
                                      style: greyTextStyleRegular.copyWith(
                                          fontSize: 14),
                                    ),
                                    InkWell(
                                      onTap: () async {
                                        launchUrlCostum(
                                            Uri.parse(widget.space.mapUrl));
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
                                      onPressed: () => showDialog(
                                          context: context,
                                          builder: ((BuildContext context) =>
                                              AlertDialog(
                                                key: widget.key,
                                                title: const Text('Alert'),
                                                content: const Text(
                                                    'Are you sure to contact the owner directly ?'),
                                                actions: [
                                                  TextButton(
                                                      onPressed: () =>
                                                          Navigator.pop(context,
                                                              'Cancel'),
                                                      child:
                                                          const Text('Cancel')),
                                                  TextButton(
                                                      onPressed: () {
                                                        //* for negative case, to 404 page
                                                        // launchUrlCostum(_urlPhone);
                                                        launchUrlCostum(Uri.parse(
                                                            'tel:+${widget.space.phone}'));
                                                        Navigator.pop(
                                                            context, 'Cancel');
                                                      },
                                                      child: const Text('Ok'))
                                                ],
                                              ))),
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
                            ),
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
                  InkWell(
                    onTap: () {
                      setState(() {
                        _isFavourite = !_isFavourite;
                      });
                    },
                    child: Image.asset(
                        _isFavourite
                            ? 'assets/images/btn_wishlist_red.png'
                            : 'assets/images/btn_wishlist.png',
                        height: 40),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

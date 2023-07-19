import 'package:flutter/material.dart';
import 'package:mockup_cozy_app/models/space.dart';
import 'package:mockup_cozy_app/pages/detail_page.dart';
import 'package:mockup_cozy_app/theme.dart';

class SpaceCard extends StatelessWidget {
  final Space space;
  const SpaceCard(this.space, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailPage(
                      key: key,
                    )));
      },
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: SizedBox(
              height: 110,
              width: 130,
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Image.asset(
                    space.imageUrl,
                  ),
                  Container(
                    height: 30,
                    width: 70,
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
                        const SizedBox(
                          width: 2,
                        ),
                        Text(
                          '${space.rating}/5',
                          style: whiteTextStyleMedium.copyWith(fontSize: 13),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                space.spaceName,
                style: blackTextStyleMedium.copyWith(fontSize: 18),
              ),
              const SizedBox(
                height: 2,
              ),
              Text.rich(TextSpan(
                  text: '\$${space.price}',
                  style: purpleTextStyleMedium.copyWith(fontSize: 16),
                  children: [
                    TextSpan(
                        text: '/ month',
                        style: greyTextStyleRegular.copyWith(
                            fontSize: 16, fontWeight: FontWeight.w300))
                  ])),
              const SizedBox(
                height: 16,
              ),
              Text(
                space.location,
                style: greyTextStyleRegular.copyWith(
                    fontSize: 14, fontWeight: FontWeight.w300),
              )
            ],
          )
        ],
      ),
    );
  }
}

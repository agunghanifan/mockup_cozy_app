import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mockup_cozy_app/models/tip.dart';

import '../theme.dart';

class TipsCard extends StatelessWidget {
  final Tip tip;
  final DateFormat format = DateFormat('MMMM');

  TipsCard(this.tip, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          tip.imageUrl,
          height: 80,
        ),
        const SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tip.tipName,
              style: blackTextStyleMedium.copyWith(fontSize: 18),
            ),
            Text(
              'Updated ${DateFormat('d MMM').format(tip.dateUpdated)}',
              style: greyTextStyleRegular.copyWith(
                  fontSize: 14, fontWeight: FontWeight.w300),
            )
          ],
        ),
        Spacer(
          key: key,
        ),
        IconButton(
            onPressed: () {},
            icon: Icon(Icons.chevron_right, color: iconGreyColor))
      ],
    );
  }
}

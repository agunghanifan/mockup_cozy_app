import "package:flutter/material.dart";
import "package:mockup_cozy_app/theme.dart";

class RatingItem extends StatelessWidget {
  final int index;
  final int rating;
  const RatingItem({required this.index, required this.rating, super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/star_orange.png',
      width: 20,
      color: rating > index ? orangeColor : const Color(0xff989BA1),
    );
  }
}

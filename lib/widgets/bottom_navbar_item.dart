import "package:flutter/material.dart";
import "package:mockup_cozy_app/theme.dart";

class BottomNavbarItem extends StatelessWidget {
  const BottomNavbarItem(
      {required this.imageUrl, required this.isActive, super.key});

  final String imageUrl;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Spacer(),
        Image.asset(
          imageUrl,
          width: 26,
        ),
        const Spacer(),
        isActive
            ? Container(
                height: 4,
                width: 30,
                decoration: BoxDecoration(
                    color: purpleColor,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(1000),
                        topRight: Radius.circular(1000))),
              )
            : Container()
      ],
    );
  }
}

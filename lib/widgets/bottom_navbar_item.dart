import "package:flutter/material.dart";

class BottomNavbarItem extends StatelessWidget {
  const BottomNavbarItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'assets/images/icon_home_solid.png',
          width: 26,
        )
      ],
    );
  }
}

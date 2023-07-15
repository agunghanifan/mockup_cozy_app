import 'package:flutter/material.dart';
import 'package:mockup_cozy_app/pages/home_page.dart';
import 'package:mockup_cozy_app/theme.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          bottom: false,
          child: Stack(children: [
            Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset('assets/images/bottom.png')),
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/logo.png'))),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Find Cozy House\nto Stay and Happy',
                    style: blackTextStyleMedium.copyWith(fontSize: 24),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Stop membuang banyak waktu\npada tempat yang tidak habitable',
                    style: greyTextStyleRegular.copyWith(
                        fontWeight: FontWeight.w300, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                      height: 50,
                      width: 210,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: purpleColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(17))),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePage()));
                        },
                        child: Text(
                          'Explore Now',
                          style: whiteTextStyleMedium.copyWith(fontSize: 18),
                        ),
                      ))
                ],
              ),
            ),
          ])),
    );
  }
}

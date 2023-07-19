import 'package:flutter/material.dart';
import 'package:mockup_cozy_app/pages/splash_page.dart';
import 'package:mockup_cozy_app/providers/space_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SpaceProvider(),
      child: const MaterialApp(
        home: SplashPage(),
      ),
    );
  }
}

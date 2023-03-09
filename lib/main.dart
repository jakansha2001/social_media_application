import 'package:flutter/material.dart';

import 'package:social_media_application/social_media/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: SocialMediaApp(),
    );
  }
}

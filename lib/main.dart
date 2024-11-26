import 'package:flutter/material.dart';
import 'package:instagram_app/view/screens/home_screen.dart';

void main() {
  runApp(const InstagramApplication());
}

class InstagramApplication extends StatelessWidget {
  const InstagramApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram Mobile',
      home: HomeScreen(),
    );
  }
}

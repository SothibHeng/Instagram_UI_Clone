import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:instagram_app/core/constants/colors.dart';

class Story extends StatelessWidget {
  final String imageUrl;
  final String title;

  const Story({
    super.key,
    required this.imageUrl,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              padding: const EdgeInsets.all(2.5),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                border: GradientBoxBorder(
                  width: 2.3,
                  gradient: secondary(),
                ),
              ),
              child: ClipOval(
                child: Image.network(
                  imageUrl,
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text(title),
      ],
    );
  }
}


import 'package:flutter/material.dart';

class CustomPageView extends StatelessWidget {
  final List<String> imageUrls;

  // Constructor to accept a list of image URLs
  const CustomPageView({super.key, required this.imageUrls});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      itemCount: imageUrls.length,
      itemBuilder: (context, index) {
        return Image.network(
          imageUrls[index],
          fit: BoxFit.cover, // Ensures the image fills the screen proportionally
          loadingBuilder: (context, child, progress) {
            if (progress == null) return child;
            return Center(
              child: CircularProgressIndicator(
                value: progress.expectedTotalBytes != null
                    ? progress.cumulativeBytesLoaded /
                    (progress.expectedTotalBytes ?? 1)
                    : null,
              ),
            );
          },
        );
      },
    );
  }
}

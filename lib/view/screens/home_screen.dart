import 'package:flutter/material.dart';
import 'package:instagram_app/core/widgets/app_bar.dart';
import 'package:instagram_app/core/widgets/navigation_bar.dart';
import 'package:instagram_app/core/widgets/story.dart';

import '../../core/widgets/custom_pageview.dart';
import '../../core/widgets/profile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    // Post images URL
    final List<String> imageUrls = [
      'https://i.pinimg.com/736x/2e/d5/16/2ed5164d032d18b2e9043135cd3d13dd.jpg',
      'https://i.pinimg.com/736x/c1/2f/a6/c12fa65a639f1df3ff6b9e4cc2ae67e3.jpg',
      'https://i.pinimg.com/736x/21/f9/f6/21f9f6895159f5a0f9f8d09128c009fd.jpg',
      'https://i.pinimg.com/736x/5f/61/3b/5f613b70192adfab0b8b39a549aa929e.jpg',
      'https://i.pinimg.com/736x/a5/95/e1/a595e145a159c45fde3f40159b3b9369.jpg'
    ];

    return Scaffold(
      appBar: const CustomAppBar(),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            color: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
            child: const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              // Profile and story section
              child: Row(
                children: [
                  // User Profile
                  Profile(),
                  SizedBox(width: 15,),
                  Story(
                    imageUrl: 'https://i.pinimg.com/474x/d6/18/4a/d6184a950d716fdd5c844c10e774b7bd.jpg',
                    title: 'cha enwoo',
                  ),
                  SizedBox(width: 15,),
                  Story(
                    imageUrl: 'https://i.pinimg.com/474x/c1/2f/a6/c12fa65a639f1df3ff6b9e4cc2ae67e3.jpg',
                    title: 'mitch koko',
                  ),
                  SizedBox(width: 15,),
                  Story(
                    imageUrl: 'https://i.pinimg.com/564x/85/5e/ea/855eeab59a8008a4ece5f390a1af2aa9.jpg',
                    title: 'The Weekend',
                  ),
                  SizedBox(width: 15,),
                  Story(
                    imageUrl: 'https://i.pinimg.com/474x/29/87/cf/2987cf845908a5fba5abe52e01359f9c.jpg',
                    title: 'spiderman',
                  ),
                  SizedBox(width: 15,),
                  Story(
                    imageUrl: 'https://i.pinimg.com/474x/9e/ea/72/9eea729808422718fc588bccce75ada9.jpg',
                    title: 'jongkook',
                  ),
                  SizedBox(width: 15,),
                  Story(
                    imageUrl: 'https://i.pinimg.com/474x/d2/c1/0e/d2c10ee073d08c381238e6e60a1f7f66.jpg',
                    title: 'jo jo',
                  ),
                  SizedBox(width: 15,),
                  Story(
                    imageUrl: 'https://i.pinimg.com/474x/20/d3/7a/20d37a3105d5d355bc4e1e6a239559e7.jpg',
                    title: 'ariana',
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: CustomPageView(imageUrls: imageUrls), // Use the custom widget
          ),
        ],
      ),
      bottomNavigationBar: const CustomAppNavigationBar(),
    );
  }
}

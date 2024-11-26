import 'package:flutter/material.dart';
import '../../core/widgets/custom_pageview.dart';

// Custom PostCard widget
class PostCard extends StatelessWidget {
  final String userName;
  final List<String> imageUrls;
  final String postCaption;
  final String profileImageUrl;

  // Constructor to accept parameters
  const PostCard({
    Key? key,
    required this.userName,
    required this.imageUrls,
    required this.postCaption,
    required this.profileImageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          // Header with User and time
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(profileImageUrl), // User profile picture
                  radius: 20,
                ),
                SizedBox(width: 10),
                Text(
                  userName, // User name
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Icon(Icons.more_vert), // Option button (for more options)
              ],
            ),
          ),

          // Post image
          Container(
            width: double.infinity,
            height: 250,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(imageUrls.isNotEmpty ? imageUrls[0] : ''), // Post image
                fit: BoxFit.cover,
              ),
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(15),
              ),
            ),
          ),

          // Post actions (like, comment, share)
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
            child: Row(
              children: [
                Icon(Icons.favorite_border, size: 30),
                SizedBox(width: 20),
                Icon(Icons.comment_outlined, size: 30),
                SizedBox(width: 20),
                Icon(Icons.share_outlined, size: 30),
              ],
            ),
          ),

          // Custom PageView for displaying multiple images
          CustomPageView(imageUrls: imageUrls), // Use the custom widget here

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              postCaption, // Post caption
              style: TextStyle(color: Colors.black54),
            ),
          ),
        ],
      ),
    );
  }
}

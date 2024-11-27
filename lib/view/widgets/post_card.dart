import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String userProfile;
  final String userName;
  final List<String> imageUrl;
  final String caption;
  final String likeCount;
  final String commentCount;
  final String shareCount;
  final String? postTime;

  const PostCard({
    super.key,
    required this.userProfile,
    required this.userName,
    required this.imageUrl,
    required this.caption,
    required this.likeCount,
    required this.commentCount,
    required this.shareCount,
    this.postTime,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.all(10),
      // padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(userProfile),
                      radius: 20,
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          userName,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        if (postTime != null)
                          Text(
                            postTime!,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey.shade600,
                            ),
                          ),
                      ],
                    ),
                  ],
                ),
                const Icon(Icons.more_vert),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: SizedBox(
              height: 420,
              child: PageView.builder(
                itemCount: imageUrl.length,
                itemBuilder: (context, index) {
                  return Image.network(
                    imageUrl[index],
                    fit: BoxFit.cover,
                    width: double.infinity,
                  );
                },
              ),
            ),
          ),


          // Post actions (like, comment, share)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    _PostActionButton(
                      imagePath: 'https://cdn-icons-png.flaticon.com/128/711/711349.png',
                      count: likeCount,
                      size: 22,
                    ),
                    const SizedBox(width: 20),
                    _PostActionButton(
                      imagePath: 'https://cdn-icons-png.flaticon.com/128/3031/3031126.png',
                      count: commentCount,
                      size: 22,
                    ),
                    const SizedBox(width: 20),
                    _PostActionButton(
                      imagePath: 'https://cdn-icons-png.flaticon.com/128/12030/12030256.png',
                      count: shareCount,
                      size: 24,
                    ),
                  ],
                ),
                const Icon(Icons.bookmark_border),
              ],
            ),
          ),

          // Caption Text
          Padding(
            padding: const EdgeInsets.only(left: 12, bottom: 10),
            child: Text(
              caption,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.black87,
              ),
              textAlign: TextAlign.start,
            ),
          ),
        ],
      ),
    );
  }
}

class _PostActionButton extends StatelessWidget {
  final String imagePath;
  final String count;
  final double size;

  const _PostActionButton({
    required this.imagePath,
    required this.count,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.network(
          imagePath,
          width: size,
          height: size,
        ),
        const SizedBox(width: 4),
        Text(
          count,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

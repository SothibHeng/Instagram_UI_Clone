import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/images/instagram_appbar.png',
            height: 45,
          ),
          Row(
            children: [
              Image.network(
                'https://cdn-icons-png.flaticon.com/128/4675/4675168.png',
                height: 26,
                width: 26,
              ),
              const SizedBox(width: 30),
              Image.network(
                'https://cdn-icons-png.flaticon.com/128/1384/1384090.png',
                height: 24,
                width: 24,
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}

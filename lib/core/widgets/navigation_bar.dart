import 'package:flutter/material.dart';

class CustomAppNavigationBar extends StatelessWidget {
  const CustomAppNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Image.network(
            'https://cdn-icons-png.flaticon.com/128/9314/9314393.png',
            width: 25,
            height: 25,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(right: 28),
            child: Image.network(
              'https://cdn-icons-png.flaticon.com/128/54/54481.png',
              width: 25,
              height: 25,
            ),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(right: 28),
            child: Image.network(
              'https://cdn-icons-png.flaticon.com/128/17819/17819441.png',
              width: 25,
              height: 25,
            ),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Image.network(
            'https://cdn-icons-png.flaticon.com/128/16878/16878693.png',
            width: 25,
            height: 25,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: ClipOval(
            child: Image.network(
              'https://i.pinimg.com/474x/a4/ff/c8/a4ffc8d67dcfaabd6c181559c076825a.jpg',
              width: 28,
              height: 28,
              fit: BoxFit.cover,
            ),
          ),
          label: '',
        ),
      ],
    );
  }
}

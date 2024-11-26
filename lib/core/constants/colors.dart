import 'package:flutter/material.dart';

class AppColors {
  // for primary
  static const Color orange = Color(0xFFF56040);
  static const Color purple = Color(0xFF833AB4);

  // for secondary
  static const Color pink = Color(0xFFC13584);
  static const Color lightOrange = Color(0xFFF77737);

  // for background
  static const Color lightPurple = Color(0xFF5851DB);
  static const Color blue = Color(0xFF405DE6);

  //default color
  static const Color defaultWhite = Color(0xFFFFFFFF);
  static const Color defaultBlack = Color(0xFF000000);
}

// Primary color
LinearGradient primary() {
  return const LinearGradient(
      colors: [AppColors.orange, AppColors.purple],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter
  );
}

// Secondary color
LinearGradient secondary() {
  return const LinearGradient(
      colors: [AppColors.pink, AppColors.lightOrange],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter
  );
}

// Background color
LinearGradient backgroundColor() {
  return const LinearGradient(
      colors: [AppColors.lightPurple, AppColors.blue],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter
  );
}
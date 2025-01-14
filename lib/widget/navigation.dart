import 'package:flutter/material.dart';

class NavigateToScreen {
  /// A generic method for navigating to a screen
  static void navigateTo(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => screen),
    );
  }
}
import 'package:flutter/material.dart';

import '../util/app_colors.dart';

/// Simple placeholder body so you can see the nav bar switching pages.
/// Replace each of these with the real page content (myth vs fact cards,
/// symptoms grid, self-check checklist, etc.) as you build them out.
class PlaceholderPage extends StatelessWidget {
  final String title;

  const PlaceholderPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.pageBackground,
      alignment: Alignment.topCenter,
      padding: const EdgeInsets.all(20),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: AppColors.textDark,
        ),
      ),
    );
  }
}
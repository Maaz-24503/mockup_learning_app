import 'package:flutter/material.dart';

import 'pages/home_shell.dart';
import 'util/app_colors.dart';

void main() {
  runApp(const BreastCancerApp());
}

class BreastCancerApp extends StatelessWidget {
  const BreastCancerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Breast Cancer Awareness',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Roboto',
        scaffoldBackgroundColor: AppColors.pageBackground,
        useMaterial3: true,
      ),
      home: const HomeShell(),
    );
  }
}
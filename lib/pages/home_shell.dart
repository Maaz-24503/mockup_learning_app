import 'package:flutter/material.dart';

import '../util/app_tab.dart';
import '../pages/healthy_living_page.dart';
import '../pages/help_page.dart';
import '../pages/home_page.dart';
import '../pages/learn_page.dart';
import '../pages/self_check_page.dart';
import '../helper/top_nav_bar.dart';

/// Shell widget that owns which tab is selected and swaps the body.
class HomeShell extends StatefulWidget {
  const HomeShell({super.key});

  @override
  State<HomeShell> createState() => _HomeShellState();
}

class _HomeShellState extends State<HomeShell> {
  AppTab _selectedTab = AppTab.home;

  void _onTabSelected(AppTab tab) {
    setState(() {
      _selectedTab = tab;
    });
  }

  Widget _buildBody() {
    switch (_selectedTab) {
      case AppTab.home:
        return const HomePage();
      case AppTab.learn:
        return const LearnPage();
      case AppTab.selfCheck:
        return const SelfCheckPage();
      case AppTab.healthyLiving:
        return const HealthyLivingPage();
      case AppTab.help:
        return const HelpPage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TopNavBar(
              selectedTab: _selectedTab,
              onTabSelected: _onTabSelected,
            ),
            Expanded(child: _buildBody()),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

import '../util/app_tab.dart';
import '../util/app_colors.dart';
import 'nav_item.dart';

/// The pink top navigation bar with tappable section labels.
class TopNavBar extends StatelessWidget {
  final AppTab selectedTab;
  final ValueChanged<AppTab> onTabSelected;

  const TopNavBar({
    super.key,
    required this.selectedTab,
    required this.onTabSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.navBar,
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: AppTab.values.map((tab) {
          final bool isSelected = tab == selectedTab;
          return NavItem(
            label: tab.label,
            isSelected: isSelected,
            onTap: () => onTabSelected(tab),
          );
        }).toList(),
      ),
    );
  }
}
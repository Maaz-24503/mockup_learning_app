import 'package:flutter/material.dart';

import 'myth_vs_fact_page.dart';
import 'placeholder_page.dart';

/// Learn section - myth vs fact cards, symptoms grid.
/// For now this routes straight to the myth vs fact cards; once the
/// symptoms grid and other Learn content are built, turn this into a
/// small sub-nav (e.g. a TabBar) between them.
class LearnPage extends StatelessWidget {
  const LearnPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MythVsFactPage();
    // return const PlaceholderPage(title: 'Learn');
  }
}
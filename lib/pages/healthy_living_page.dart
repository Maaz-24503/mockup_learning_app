import 'package:flutter/material.dart';

import '../l10n/generated/app_localizations.dart';
import 'placeholder_page.dart';

/// Healthy living section.
class HealthyLivingPage extends StatelessWidget {
  const HealthyLivingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PlaceholderPage(
      title: AppLocalizations.of(context).healthyLivingTitle,
    );
  }
}

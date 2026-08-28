import 'package:flutter/material.dart';

import '../l10n/generated/app_localizations.dart';
import 'placeholder_page.dart';

/// Help section.
class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PlaceholderPage(title: AppLocalizations.of(context).helpTitle);
  }
}

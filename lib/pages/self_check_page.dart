import 'package:flutter/material.dart';

import '../l10n/generated/app_localizations.dart';
import 'placeholder_page.dart';

/// Self-check section - monthly self-exam steps and checkpoint questions.
class SelfCheckPage extends StatelessWidget {
  const SelfCheckPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PlaceholderPage(title: AppLocalizations.of(context).selfCheckTitle);
  }
}

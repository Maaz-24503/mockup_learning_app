import 'package:flutter/material.dart';

import '../l10n/generated/app_localizations.dart';
import '../models/myth_fact.dart';
import '../util/app_colors.dart';
import '../util/locale_scope.dart';
import '../helper/myth_fact_card.dart';

/// "MYTH VS FACT CARDS" screen. Each card starts on the myth side and
/// flips to reveal the fact when tapped.
class MythVsFactPage extends StatelessWidget {
  const MythVsFactPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final cards = mockMythFacts(l10n);

    return Container(
      color: AppColors.pageBackground,
      child: Column(
        children: [
          const SizedBox(height: 16),
          Text(
            l10n.mythVsFactTitle,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppColors.textDark,
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(height: 4),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              l10n.mythVsFactSubtitle,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 12, color: AppColors.textDark),
            ),
          ),
          const SizedBox(height: 12),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 8,
              ),
              itemCount: cards.length,
              separatorBuilder: (context, index) => const SizedBox(height: 14),
              itemBuilder: (context, index) {
                return MythFactCard(data: cards[index]);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: ElevatedButton(
              onPressed: () => LocaleScope.of(context).toggleLocale(),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.textDark,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
              ),
              child: Text(l10n.switchLanguage),
            ),
          ),
        ],
      ),
    );
  }
}

import '../l10n/generated/app_localizations.dart';

/// A single myth/fact pair shown on a flip card.
class MythFact {
  final String myth;
  final String fact;

  const MythFact({required this.myth, required this.fact});
}

/// Mock content for the Myth vs Fact cards screen, in the app's current
/// language. The copy itself lives in lib/l10n/*.arb — add a mythN/factN
/// pair to every arb file to add a card here.
List<MythFact> mockMythFacts(AppLocalizations l10n) => [
  MythFact(myth: l10n.myth1, fact: l10n.fact1),
  MythFact(myth: l10n.myth2, fact: l10n.fact2),
  MythFact(myth: l10n.myth3, fact: l10n.fact3),
  MythFact(myth: l10n.myth4, fact: l10n.fact4),
  MythFact(myth: l10n.myth5, fact: l10n.fact5),
];

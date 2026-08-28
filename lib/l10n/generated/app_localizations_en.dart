// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Breast Cancer Awareness';

  @override
  String get navHome => 'Home';

  @override
  String get navLearn => 'Learn';

  @override
  String get navSelfCheck => 'Self-check';

  @override
  String get navHealthyLiving => 'Healthy living';

  @override
  String get navHelp => 'Help';

  @override
  String get homeTitle => 'What is Breast Cancer?';

  @override
  String get selfCheckTitle => 'Self-check';

  @override
  String get healthyLivingTitle => 'Healthy Living';

  @override
  String get helpTitle => 'Help';

  @override
  String get mythVsFactTitle => 'MYTH VS FACT CARDS';

  @override
  String get mythVsFactSubtitle => 'Tap a card to flip it and reveal the fact.';

  @override
  String get mythLabel => 'MYTH';

  @override
  String get factLabel => 'FACT';

  @override
  String get switchLanguage => 'Translate to Telugu';

  @override
  String get myth1 => 'Only women with a family history get breast cancer.';

  @override
  String get fact1 =>
      'Most people diagnosed with breast cancer have no family history of it at all.';

  @override
  String get myth2 => 'A mammogram causes breast cancer to spread.';

  @override
  String get fact2 =>
      'Mammograms use a very low dose of radiation and do not cause cancer to spread.';

  @override
  String get myth3 => 'Breast cancer always causes a noticeable lump.';

  @override
  String get fact3 =>
      'Early breast cancer often has no symptoms at all, which is why screening matters.';

  @override
  String get myth4 => 'Men cannot get breast cancer.';

  @override
  String get fact4 =>
      'Men have breast tissue too and can develop breast cancer.';

  @override
  String get myth5 =>
      'Wearing an underwire bra increases your risk of breast cancer.';

  @override
  String get fact5 =>
      'There is no scientific evidence linking bra style or underwire to breast cancer risk.';
}

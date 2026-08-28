import '../l10n/generated/app_localizations.dart';

/// The 5 top-level sections shown in the nav bar.
enum AppTab { home, learn, selfCheck, healthyLiving, help }

extension AppTabLabel on AppTab {
  /// The nav bar label in the app's current language.
  String label(AppLocalizations l10n) {
    switch (this) {
      case AppTab.home:
        return l10n.navHome;
      case AppTab.learn:
        return l10n.navLearn;
      case AppTab.selfCheck:
        return l10n.navSelfCheck;
      case AppTab.healthyLiving:
        return l10n.navHealthyLiving;
      case AppTab.help:
        return l10n.navHelp;
    }
  }
}

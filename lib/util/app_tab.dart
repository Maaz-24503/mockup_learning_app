/// The 5 top-level sections shown in the nav bar.
enum AppTab { home, learn, selfCheck, healthyLiving, help }

extension AppTabLabel on AppTab {
  String get label {
    switch (this) {
      case AppTab.home:
        return 'Home';
      case AppTab.learn:
        return 'Learn';
      case AppTab.selfCheck:
        return 'Self-check';
      case AppTab.healthyLiving:
        return 'Healthy living';
      case AppTab.help:
        return 'Help';
    }
  }
}
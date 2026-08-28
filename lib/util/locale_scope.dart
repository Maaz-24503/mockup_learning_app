import 'package:flutter/material.dart';

import '../l10n/generated/app_localizations.dart';

/// Makes the app's current [Locale] readable — and changeable — from any
/// widget below it, so a button deep in a page can switch language without
/// the pages having to pass a callback down by hand.
///
/// It sits *above* the MaterialApp: [BreastCancerApp] rebuilds the
/// MaterialApp with the new locale whenever [setLocale] is called.
class LocaleScope extends InheritedWidget {
  final Locale locale;
  final ValueChanged<Locale> setLocale;

  const LocaleScope({
    super.key,
    required this.locale,
    required this.setLocale,
    required super.child,
  });

  static LocaleScope of(BuildContext context) {
    final scope = context.dependOnInheritedWidgetOfExactType<LocaleScope>();
    assert(scope != null, 'No LocaleScope found above this widget.');
    return scope!;
  }

  /// Cycles to the next supported locale. With two languages this is a
  /// straight English <-> Telugu toggle; adding a third arb file makes it
  /// step through all of them without any change here.
  void toggleLocale() {
    final supported = AppLocalizations.supportedLocales;
    final current = supported.indexWhere(
      (l) => l.languageCode == locale.languageCode,
    );
    final next = supported[(current + 1) % supported.length];
    setLocale(next);
  }

  @override
  bool updateShouldNotify(LocaleScope oldWidget) => locale != oldWidget.locale;
}

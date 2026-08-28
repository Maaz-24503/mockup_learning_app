import 'package:flutter/material.dart';

import 'l10n/generated/app_localizations.dart';
import 'pages/home_shell.dart';
import 'util/app_colors.dart';
import 'util/locale_scope.dart';

void main() {
  runApp(const BreastCancerApp());
}

class BreastCancerApp extends StatefulWidget {
  const BreastCancerApp({super.key});

  @override
  State<BreastCancerApp> createState() => _BreastCancerAppState();
}

class _BreastCancerAppState extends State<BreastCancerApp> {
  /// Which language the whole app renders in. Starts on English; the
  /// "Translate to..." button swaps it at runtime.
  Locale _locale = const Locale('en');

  void _setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  Widget build(BuildContext context) {
    return LocaleScope(
      locale: _locale,
      setLocale: _setLocale,
      child: MaterialApp(
        onGenerateTitle: (context) => AppLocalizations.of(context).appTitle,
        debugShowCheckedModeBanner: false,
        locale: _locale,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        theme: ThemeData(
          fontFamily: 'Roboto',
          scaffoldBackgroundColor: AppColors.pageBackground,
          useMaterial3: true,
        ),
        home: const HomeShell(),
      ),
    );
  }
}

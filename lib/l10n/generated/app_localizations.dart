import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_te.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('te'),
  ];

  /// Application title shown in the OS task switcher.
  ///
  /// In en, this message translates to:
  /// **'Breast Cancer Awareness'**
  String get appTitle;

  /// Top nav bar label for the home section.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get navHome;

  /// Top nav bar label for the learn section.
  ///
  /// In en, this message translates to:
  /// **'Learn'**
  String get navLearn;

  /// Top nav bar label for the self-check section.
  ///
  /// In en, this message translates to:
  /// **'Self-check'**
  String get navSelfCheck;

  /// Top nav bar label for the healthy living section.
  ///
  /// In en, this message translates to:
  /// **'Healthy living'**
  String get navHealthyLiving;

  /// Top nav bar label for the help section.
  ///
  /// In en, this message translates to:
  /// **'Help'**
  String get navHelp;

  /// Heading of the home page.
  ///
  /// In en, this message translates to:
  /// **'What is Breast Cancer?'**
  String get homeTitle;

  /// Heading of the self-check page.
  ///
  /// In en, this message translates to:
  /// **'Self-check'**
  String get selfCheckTitle;

  /// Heading of the healthy living page.
  ///
  /// In en, this message translates to:
  /// **'Healthy Living'**
  String get healthyLivingTitle;

  /// Heading of the help page.
  ///
  /// In en, this message translates to:
  /// **'Help'**
  String get helpTitle;

  /// Heading of the myth vs fact cards screen.
  ///
  /// In en, this message translates to:
  /// **'MYTH VS FACT CARDS'**
  String get mythVsFactTitle;

  /// Instruction under the myth vs fact heading.
  ///
  /// In en, this message translates to:
  /// **'Tap a card to flip it and reveal the fact.'**
  String get mythVsFactSubtitle;

  /// Header strip label on the red (front) side of a flip card.
  ///
  /// In en, this message translates to:
  /// **'MYTH'**
  String get mythLabel;

  /// Header strip label on the green (back) side of a flip card.
  ///
  /// In en, this message translates to:
  /// **'FACT'**
  String get factLabel;

  /// Button that switches to the other language. Written in the CURRENT language, naming the language it switches TO.
  ///
  /// In en, this message translates to:
  /// **'Translate to Telugu'**
  String get switchLanguage;

  /// Myth side of card 1.
  ///
  /// In en, this message translates to:
  /// **'Only women with a family history get breast cancer.'**
  String get myth1;

  /// Fact side of card 1.
  ///
  /// In en, this message translates to:
  /// **'Most people diagnosed with breast cancer have no family history of it at all.'**
  String get fact1;

  /// Myth side of card 2.
  ///
  /// In en, this message translates to:
  /// **'A mammogram causes breast cancer to spread.'**
  String get myth2;

  /// Fact side of card 2.
  ///
  /// In en, this message translates to:
  /// **'Mammograms use a very low dose of radiation and do not cause cancer to spread.'**
  String get fact2;

  /// Myth side of card 3.
  ///
  /// In en, this message translates to:
  /// **'Breast cancer always causes a noticeable lump.'**
  String get myth3;

  /// Fact side of card 3.
  ///
  /// In en, this message translates to:
  /// **'Early breast cancer often has no symptoms at all, which is why screening matters.'**
  String get fact3;

  /// Myth side of card 4.
  ///
  /// In en, this message translates to:
  /// **'Men cannot get breast cancer.'**
  String get myth4;

  /// Fact side of card 4.
  ///
  /// In en, this message translates to:
  /// **'Men have breast tissue too and can develop breast cancer.'**
  String get fact4;

  /// Myth side of card 5.
  ///
  /// In en, this message translates to:
  /// **'Wearing an underwire bra increases your risk of breast cancer.'**
  String get myth5;

  /// Fact side of card 5.
  ///
  /// In en, this message translates to:
  /// **'There is no scientific evidence linking bra style or underwire to breast cancer risk.'**
  String get fact5;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'te'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'te':
      return AppLocalizationsTe();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}

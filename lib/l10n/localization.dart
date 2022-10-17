import 'package:flutter/material.dart';
import 'dart:async';
import 'package:intl/intl.dart';

import 'package:my_app/l10n/localization_de.dart';
import 'package:my_app/l10n/localization_en.dart';

abstract class Localization {
  static Localization? of(BuildContext context) {
    return Localizations.of<Localization>(context, Localization);
  }

  String get move_to_login;
  String get mail_needed;
  String get pw;
  String get pw_required;
  String get valid_mail;
  String get pw_not_valid;
  String get no_account;
  String get sign_up;
  String get pw_mismatch;
  String get pw_confirm;
}

class MyLocalizationsDelegate extends LocalizationsDelegate<Localization> {
  const MyLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ['en', 'de'].contains(locale.languageCode);

  @override
  Future<Localization> load(Locale locale) => _load(locale);

  static Future<Localization> _load(Locale locale) async {
    final String name =
        (locale.countryCode == null || locale.countryCode!.isEmpty)
            ? locale.languageCode
            : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);
    Intl.defaultLocale = localeName;

    if (locale.languageCode == 'en') {
      return LocalizationEN();
    }
    return LocalizationDE();
  }

  @override
  bool shouldReload(LocalizationsDelegate<Localization> old) => false;
}

import 'package:flutter/material.dart';

enum LocalizatonLocales { init, en, ar, tr }

extension LocalizatonLocalesExtension on LocalizatonLocales {
  Locale get rawValue {
    switch (this) {
      case LocalizatonLocales.en:
        return const Locale('en', 'US');

      case LocalizatonLocales.ar:
        return const Locale('ar', 'AE');

      case LocalizatonLocales.tr:
        return const Locale('tr', 'TR');
      case LocalizatonLocales.init:
        return const Locale('tr', 'TR');
    }
  }

  List<Locale> get supportedLocales => [const Locale('en', 'US'), const Locale('ar', 'AE'), const Locale('tr', 'TR')];
}

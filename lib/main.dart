import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_design/module/view/login/login_screen.dart';

import 'core/init/theme/theme_manager.dart';
import 'core/init/utility/localization_utils.dart';
part './app_start.dart';

Future<void> main() async {
  final _appStart = _AppStart();
  await _appStart.init();
  runApp(
    EasyLocalization(
        supportedLocales: LocalizatonLocales.init.supportedLocales,
        path: _appStart._localizationAssetPath,
        fallbackLocale: LocalizatonLocales.init.rawValue,
        child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    context.setLocale(LocalizatonLocales.init.rawValue);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        title: 'Flutter Design',
        theme: ThemeManager().appTheme,
        home: LoginScreen());
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/HomeScreen.dart';
import 'package:islami_app/core/provider/AppProvider.dart';
import 'package:islami_app/core/theme/myThemeData.dart';
import 'package:islami_app/modules/Quraan/quranTextView.dart';
import 'package:islami_app/modules/hadeth/hadeethViewWidget.dart';
import 'package:islami_app/splashScreen.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ChangeNotifierProvider(
      create: (context) => AppProvider()..init(), child: MyApplication()));
}

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appProvider = Provider.of<AppProvider>(context);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: MyThemeData.lightTheme,
        darkTheme: MyThemeData.darkTheme,
        themeMode: appProvider.currentTheme,
        initialRoute: splashScreen.routeName,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        locale: Locale(appProvider.currentLocale),
        routes: {
          HomeScreen.routeName: (context) => HomeScreen(),
          splashScreen.routeName: (context) => const splashScreen(),
          QuranTextView.routeName: (context) => QuranTextView(),
          hadeethView.routeName: (context) => hadeethView()
        });
  }
}

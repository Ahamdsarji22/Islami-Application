import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/modules/setting/SettingItem.dart';
import 'package:islami_app/widgets/LanguageBottoSheetWidget.dart';
import 'package:provider/provider.dart';

import '../../core/provider/AppProvider.dart';
import '../../widgets/ModeBottomSheetWidget.dart';

class settingWidget extends StatefulWidget {
  @override
  State<settingWidget> createState() => _settingWidgetState();
}

class _settingWidgetState extends State<settingWidget> {
  @override
  Widget build(BuildContext context) {
    var local = AppLocalizations.of(context)!;
    var appProvider = Provider.of<AppProvider>(context);

    return Container(
      margin: EdgeInsets.only(left: 40, right: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          settingItem(
              settingLableTitle: 'Languages',
              OnOptionTap: () {
                showLanguageBottomSheet(context);
              },
              selectedOption:
                  appProvider.currentLocale == 'en' ? 'English' : 'عربي'),
          SizedBox(
            height: 10,
          ),
          settingItem(
              settingLableTitle: 'Mode',
              OnOptionTap: () {
                showModeBottomSheet(context);
              },
              selectedOption: appProvider.isDark() ? 'Dark' : 'light')
        ],
      ),
    );
  }

  void showLanguageBottomSheet(context) {
    showModalBottomSheet(
        context: context, builder: (context) => LanguageBottomSheetWidget());
  }

  void showModeBottomSheet(context) {
    showModalBottomSheet(
        context: context, builder: (context) => ModeBottomSheetWidget());
  }
}

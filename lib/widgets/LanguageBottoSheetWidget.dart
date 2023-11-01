import 'package:flutter/material.dart';
import 'package:islami_app/widgets/selectedItemChechBox.dart';
import 'package:islami_app/widgets/unSelectedItemWidget.dart';
import 'package:provider/provider.dart';

import '../core/provider/AppProvider.dart';

class LanguageBottomSheetWidget extends StatelessWidget {
  const LanguageBottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var appProvider = Provider.of<AppProvider>(context);
    var theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        color: theme.primaryColor.withOpacity(0.9),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            GestureDetector(
                onTap: () {
                  appProvider.changeLocale('en');
                  Navigator.pop(context);
                },
                child: appProvider.currentLocale == 'en'
                    ? selectedItem(selectedTitle: 'English')
                    : unSelectedItem(unSelectedTitle: 'English')),
            GestureDetector(
                onTap: () {
                  appProvider.changeLocale('ar');
                  Navigator.pop(context);
                },
                child: appProvider.currentLocale == 'en'
                    ? unSelectedItem(unSelectedTitle: 'عربي')
                    : selectedItem(selectedTitle: 'عربي'))
          ],
        ),
      ),
    );
  }
}

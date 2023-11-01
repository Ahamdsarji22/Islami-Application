import 'package:flutter/material.dart';
import 'package:islami_app/widgets/selectedItemChechBox.dart';
import 'package:islami_app/widgets/unSelectedItemWidget.dart';
import 'package:provider/provider.dart';

import '../core/provider/AppProvider.dart';

class ModeBottomSheetWidget extends StatelessWidget {
  const ModeBottomSheetWidget({super.key});

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
                  appProvider.changeTheme(ThemeMode.dark);
                  Navigator.pop(context);
                },
                child: appProvider.isDark()
                    ? selectedItem(selectedTitle: 'dark')
                    : unSelectedItem(unSelectedTitle: 'dark')),
            GestureDetector(
                onTap: () {
                  appProvider.changeTheme(ThemeMode.light);
                  Navigator.pop(context);
                },
                child: appProvider.isDark()
                    ? unSelectedItem(unSelectedTitle: 'light')
                    : selectedItem(selectedTitle: 'light'))
          ],
        ),
      ),
    );
  }
}

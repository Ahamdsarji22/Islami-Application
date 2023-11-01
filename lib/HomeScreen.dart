import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/modules/Quraan/quraanWidget.dart';
import 'package:islami_app/modules/setting/settingHomeLayout.dart';
import 'package:islami_app/widgets/hadethWidget.dart';
import 'package:islami_app/widgets/radioWidget.dart';
import 'package:islami_app/widgets/tasbehWidget.dart';
import 'package:provider/provider.dart';

import 'core/provider/AppProvider.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'HomeScreen';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var selectedIndex = 0;
  List<Widget> selected = [
    quranWidget(),
    hadethWidget(),
    tasbehWidget(),
    radioWidget(),
    settingWidget()
  ];

  @override
  Widget build(BuildContext context) {
    var local = AppLocalizations.of(context)!;
    var theme = Theme.of(context);
    var appProvider = Provider.of<AppProvider>(context);
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(appProvider.isDark()
                ? "assets/images/background_dark.png"
                : "assets/images/background.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Scaffold(
            appBar: AppBar(
              title: Text(local.islami),
            ),
            body: selected[selectedIndex],
            bottomNavigationBar: BottomNavigationBar(
              elevation: 0.0,
              onTap: (int index) {
                selectedIndex = index;
                setState(() {});
              },
              currentIndex: selectedIndex,
              items: [
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/quran_icon.png')),
                    label: local.quran),
                BottomNavigationBarItem(
                    icon:
                        ImageIcon(AssetImage('assets/images/ahadeth_icon.png')),
                    label: local.hadeth),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/sebha_icon.png')),
                    label: local.tasbeh),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/radio_icon.png')),
                    label: local.radio),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings), label: local.setting),
              ],
            )));
  }
}

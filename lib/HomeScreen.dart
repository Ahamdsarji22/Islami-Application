import 'package:flutter/material.dart';
import 'package:islami_app/modules/Quraan/quraanWidget.dart';
import 'package:islami_app/widgets/hadethWidget.dart';
import 'package:islami_app/widgets/radioWidget.dart';
import 'package:islami_app/widgets/settingWidget.dart';
import 'package:islami_app/widgets/tasbehWidget.dart';

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
    return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
            appBar: AppBar(
              title: const Text('إسلامي'),
            ),
            body: selected[selectedIndex],
            bottomNavigationBar: BottomNavigationBar(
              onTap: (int index) {
                selectedIndex = index;
                setState(() {});
              },
              currentIndex: selectedIndex,
              items: const [
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/quran_icon.png')),
                    label: 'Quran'),
                BottomNavigationBarItem(
                    icon:
                        ImageIcon(AssetImage('assets/images/ahadeth_icon.png')),
                    label: 'Hadeth'),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/sebha_icon.png')),
                    label: 'Tasbeeh'),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/radio_icon.png')),
                    label: 'Radio'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings), label: 'Setting'),
              ],
            )));
  }
}

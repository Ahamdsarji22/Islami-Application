import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/modules/Quraan/quraanWidget.dart';

class QuranTextView extends StatefulWidget {
  QuranTextView({super.key});

  static const String routeName = 'SuraText';

  @override
  State<QuranTextView> createState() => _QuranTextViewState();
}

class _QuranTextViewState extends State<QuranTextView> {
  String surahContent = '';
  List<String> allContent = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetails;
    if (surahContent.isEmpty) {
      loadFiles(args.suraNumber);
    }
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context).size;

    return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          appBar: AppBar(
            title: Text('إسلامي'),
          ),
          body: Container(
            margin: EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 100),
            padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
            height: mediaQuery.height,
            width: mediaQuery.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Color(0xFFF3F3F3).withOpacity(0.7),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      args.suraName,
                      style: theme.textTheme.bodyLarge,
                    ),
                    SizedBox(width: 20),
                    Icon(
                      Icons.play_circle,
                      size: 30,
                    )
                  ],
                ),
                Divider(
                  color: theme.primaryColor,
                  endIndent: 20,
                  indent: 20,
                  thickness: 1,
                  height: 1,
                ),
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (
                      BuildContext context,
                      int index,
                    ) {
                      return Text('(${index + 1})${allContent[index]}',
                          style: theme.textTheme.bodySmall,
                          textAlign: TextAlign.center);
                    },
                    itemCount: allContent.length,
                  ),
                )
              ],
            ),
          ),
        ));
  }

  loadFiles(String index) async {
    String surah = await rootBundle.loadString("assets/files/$index.txt");
    surahContent = surah;
    List<String> Lines = surahContent.split('\n');
    print(Lines);
    allContent = Lines;
    setState(() {});
  }
}

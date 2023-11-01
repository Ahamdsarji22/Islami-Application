import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/modules/Quraan/quraanWidget.dart';
import 'package:provider/provider.dart';

import '../../core/provider/AppProvider.dart';

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
    var appProvider = Provider.of<AppProvider>(context);
    var local = AppLocalizations.of(context)!;
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetails;
    if (surahContent.isEmpty) {
      loadFiles(args.suraNumber);
    }
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context).size;

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
          body: Container(
            margin: EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 100),
            padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
            height: mediaQuery.height,
            width: mediaQuery.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: theme.colorScheme.primaryContainer.withOpacity(0.7),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "سورة ${args.suraName}",
                      style: GoogleFonts.reemKufi(
                          fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    SizedBox(width: 20),
                    Icon(
                      Icons.play_circle,
                      color: theme.iconTheme.color,
                      size: 30,
                    )
                  ],
                ),
                Text(
                  'بسم الله الرحمن الرحيم',
                  style: GoogleFonts.elMessiri(
                      color: Color(0xFF2B2B2B),
                      fontWeight: FontWeight.w500,
                      fontSize: 12),
                ),
                Divider(
                  color: theme.dividerTheme.color,
                  endIndent: 20,
                  indent: 20,
                  thickness: 1,
                  height: 1,
                ),
                Expanded(
                  child: ListView.separated(
                    itemBuilder: (
                      BuildContext context,
                      int index,
                    ) {
                      return Text('${allContent[index]}(${index + 1})',
                          style: theme.textTheme.bodySmall,
                          textAlign: TextAlign.center);
                    },
                    itemCount: allContent.length,
                    separatorBuilder: (context, index) => Divider(
                      color: theme.dividerTheme.color,
                      endIndent: 20,
                      indent: 20,
                      thickness: 0.5,
                      height: 1,
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }

  loadFiles(String index) async {
    String surah = await rootBundle.loadString("assets/files/$index.txt");
    surahContent = surah.trim();
    List<String> Lines = surahContent.split('\n');
    // Lines.removeAt(Lines.length );
    print(Lines);

    setState(() {
      allContent = Lines;
    });
  }
}

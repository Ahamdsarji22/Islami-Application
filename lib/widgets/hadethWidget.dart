import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/modules/hadeth/hadeethViewWidget.dart';

class hadethWidget extends StatefulWidget {
  @override
  State<hadethWidget> createState() => _hadethWidgetState();
}

class _hadethWidgetState extends State<hadethWidget> {
  List<HadeethContent> AllHadeethContent = [];

  @override
  Widget build(BuildContext context) {
    if (AllHadeethContent.isEmpty) readFiles();
    var theme = Theme.of(context);
    return Column(children: [
      Image.asset('assets/images/ahadeth_image.png'),
      Divider(
        color: theme.dividerTheme.color,
        thickness: 3,
        indent: 10.0,
        endIndent: 10.0,
      ),
      Row(
        children: [
          Expanded(
            child: Text(
              AppLocalizations.of(context)!.hadiths,
              style: theme.textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
      Divider(
        color: theme.dividerTheme.color,
        thickness: 3,
        indent: 10.0,
        endIndent: 10.0,
      ),
      Expanded(
        child: ListView.separated(
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, hadeethView.routeName,
                  arguments: HadeethContent(
                      title: AllHadeethContent[index].title,
                      content: AllHadeethContent[index].content));
            },
            child: Text(
              AllHadeethContent[index].title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          itemCount: AllHadeethContent.length,
          separatorBuilder: (context, index) => Divider(
            color: theme.dividerTheme.color,
            thickness: 2,
            indent: 120.0,
            endIndent: 120.0,
          ),
        ),
      )
    ]);
  }

  readFiles() async {
    var HadethContent = await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> Ahadeeth = HadethContent.split('#');
    for (int i = 0; i <= Ahadeeth.length; i++) {
      String singleHadeeth = Ahadeeth[i].trim();
      int HadeethIndex = singleHadeeth.indexOf('\n');
      String title = singleHadeeth.substring(0, HadeethIndex);
      String content = singleHadeeth.substring(HadeethIndex + 1);
      HadeethContent hadeethContent =
          HadeethContent(title: title, content: content);

      AllHadeethContent.add(hadeethContent);
      setState(() {});
      //print(AllHadeethContent[i].content);
    }
  }
}

class HadeethContent {
  final String title;
  final String content;

  HadeethContent({required this.title, required this.content});
}

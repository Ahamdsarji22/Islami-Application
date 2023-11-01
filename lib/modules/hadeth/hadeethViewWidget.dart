import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/widgets/hadethWidget.dart';
import 'package:provider/provider.dart';

import '../../core/provider/AppProvider.dart';

class hadeethView extends StatelessWidget {
  static const String routeName = 'hadeethView';

  @override
  Widget build(BuildContext context) {
    var appProvider = Provider.of<AppProvider>(context);
    var local = AppLocalizations.of(context)!;
    var args = ModalRoute.of(context)?.settings.arguments as HadeethContent;
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
                      args.title,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ],
                ),
                Divider(
                  color: theme.dividerTheme.color,
                  endIndent: 20,
                  indent: 20,
                  thickness: 1,
                  height: 3,
                ),
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) => Text(
                      args.content,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodySmall,
                    ),
                    itemCount: 1,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

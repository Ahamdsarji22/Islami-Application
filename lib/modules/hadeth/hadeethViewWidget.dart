import 'package:flutter/material.dart';
import 'package:islami_app/widgets/hadethWidget.dart';

class hadeethView extends StatelessWidget {
  static const String routeName = 'hadeethView';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadeethContent;
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
                      args.title,
                      style: theme.textTheme.bodyLarge,
                    ),
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
                    itemBuilder: (context, index) => Text(
                      args.content,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodyMedium,
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

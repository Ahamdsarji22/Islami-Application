import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class tasbehWidget extends StatefulWidget {
  @override
  State<tasbehWidget> createState() => _tasbehWidgetState();
}

double angel = 0;
int counter = 0;
var index = 0;

class _tasbehWidgetState extends State<tasbehWidget> {
  @override
  Widget build(BuildContext context) {
    List<String> azkar = [
      'سبحان الله',
      'الحمد لله',
      'لا اله الا الله',
      'استغفر الله',
      'الهم صل على محمد'
    ];
    var local = AppLocalizations.of(context)!;
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context).size;

    if (counter == 100) index++;

    return Column(
      children: [
        Stack(
          children: [
            Container(
              margin: EdgeInsets.only(left: mediaQuery.width * 0.08),
              alignment: Alignment.topCenter,
              child: Image.asset(
                'assets/images/head_of_seb7a.png',
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 75),
              alignment: Alignment.topCenter,
              child: Transform.rotate(
                angle: angel,
                child: GestureDetector(
                  onTap: () {
                    angel += 30;
                    counter++;
                    setState(() {
                      counter == 0;
                    });
                  },
                  child: Image.asset(
                    'assets/images/body_of_seb7a.png',
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Column(
          children: [
            Text(
              'عدد التسبيحات',
              style: theme.textTheme.bodyLarge,
            ),
          ],
        ),
        Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: theme.colorScheme.primary.withOpacity(0.8),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(
                '$counter',
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
            )),
        SizedBox(
          height: 30,
        ),
        Container(
          padding: EdgeInsets.only(top: 4),
          height: 45,
          width: mediaQuery.width * 0.35,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: theme.colorScheme.primary,
          ),
          child: Container(
            padding: EdgeInsets.all(3),
            child: Text(
              azkar[index],
              maxLines: 2,
              overflow: TextOverflow.visible,
              softWrap: false,
              style: theme.textTheme.bodySmall?.copyWith(
                color: Colors.white,
                fontSize: 19,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}

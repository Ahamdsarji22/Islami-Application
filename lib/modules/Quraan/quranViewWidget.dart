import 'package:flutter/material.dart';

class QuranViewWidget extends StatelessWidget {
  final String SuraName;
  final String SuraNum;

  QuranViewWidget({super.key, required this.SuraName, required this.SuraNum});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Row(
      children: [
        Expanded(
          child: Text(
            SuraNum,
            style: theme.textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          height: 45,
          width: 1.5,
          color: theme.primaryColor,
        ),
        Expanded(
            child: Text(SuraName,
                style: theme.textTheme.bodyMedium,
                textAlign: TextAlign.center)),
      ],
    );
  }
}

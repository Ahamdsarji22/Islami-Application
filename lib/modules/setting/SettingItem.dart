import 'package:flutter/material.dart';

typedef OnOptionTapSetting = void Function();

class settingItem extends StatelessWidget {
  final String settingLableTitle;
  final String selectedOption;

  final OnOptionTapSetting OnOptionTap;

  settingItem(
      {super.key,
      required this.settingLableTitle,
      required this.OnOptionTap,
      required this.selectedOption});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(settingLableTitle),
        SizedBox(height: 5),
        GestureDetector(
          onTap: OnOptionTap,
          child: Container(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  selectedOption,
                  style: theme.textTheme.bodyMedium,
                  textAlign: TextAlign.start,
                ),
                Icon(Icons.arrow_drop_down)
              ],
            ),
            width: mediaQuery.width,
            height: 60,
            decoration: BoxDecoration(
                border: Border.all(
                    color: theme.colorScheme.onSecondary, width: 2.0),
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(15)),
          ),
        )
      ],
    );
  }
}

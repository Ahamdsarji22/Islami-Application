import 'package:flutter/material.dart';

class unSelectedItem extends StatelessWidget {
  final String unSelectedTitle;

  const unSelectedItem({super.key, required this.unSelectedTitle});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      height: 60,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 2.0),
          color: Colors.white12,
          borderRadius: BorderRadius.circular(15)),
      child: Text(
        unSelectedTitle,
        textAlign: TextAlign.start,
      ),
    );
  }
}

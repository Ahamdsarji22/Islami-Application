import 'package:flutter/material.dart';

class selectedItem extends StatelessWidget {
  final String selectedTitle;

  const selectedItem({super.key, required this.selectedTitle});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            selectedTitle,
            //  style: theme.textTheme.bodyMedium,
            textAlign: TextAlign.start,
          ),
          Icon(Icons.check)
        ],
      ),
      //   width: mediaQuery.width,
      height: 60,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 2.0),
          color: theme.primaryColor.withOpacity(0.9),
          borderRadius: BorderRadius.circular(15)),
    );
  }
}

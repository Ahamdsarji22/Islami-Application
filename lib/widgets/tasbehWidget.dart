import 'package:flutter/material.dart';

class tasbehWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Center(
      child: Column(
        children: [
          Image(
            image: AssetImage('assets/images/head_of_seb7a.png'),
            fit: BoxFit.fitHeight,
          ),
          Image.asset(
            'assets/images/body_of_seb7a.png',
            fit: BoxFit.fitHeight,
          ),
        ],
      ),
    );
  }
}

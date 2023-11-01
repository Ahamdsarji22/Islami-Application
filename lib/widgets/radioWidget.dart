import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class radioWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var local = AppLocalizations.of(context)!;
    return Center(
      child: Text(local.radio, style: TextStyle(fontSize: 30)),
    );
  }
}



import 'package:flutter/material.dart';

import '../../../l10n/app_localizations.dart';

//AppLocalizations.of(context).welcome
// context.loc.welcome
extension BuildContextHelper on BuildContext {
  AppLocalizations get loc {
    return AppLocalizations.of(this)!;
  }
}
/*
"welcomeMessage": "Hello, {userName}!",
AppLocalizations.of(context)!.welcomeMessage('Ahmed'))
-----------------------
*/
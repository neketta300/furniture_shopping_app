import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:furniture_shopping_app/generated/l10n.dart';
import 'package:furniture_shopping_app/ui/responsive/responsive.dart';
import 'package:furniture_shopping_app/ui/theme/theme.dart';
import 'package:provider/provider.dart';

import 'features/onboarding/view/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider<Responsive>(
      create: (BuildContext context) {
        return Responsive(context);
      },
      child: MaterialApp(
        localizationsDelegates: [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        title: 'Furniture Shop',
        theme: themeData,
        home: OnboardingScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

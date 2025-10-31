import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:furniture_shopping_app/features/home/view/home_screen.dart';
import 'package:furniture_shopping_app/generated/l10n.dart';
import 'package:furniture_shopping_app/router/router.dart';
import 'package:furniture_shopping_app/ui/responsive/responsive.dart';
import 'package:furniture_shopping_app/ui/theme/theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const FurnitureApp());
}

class FurnitureApp extends StatefulWidget {
  const FurnitureApp({super.key});

  @override
  State<FurnitureApp> createState() => _FurnitureAppState();
}

class _FurnitureAppState extends State<FurnitureApp> {
  final _router = AppRouter();
  @override
  Widget build(BuildContext context) {
    return Provider<Responsive>(
      create: (BuildContext context) {
        return Responsive(context);
      },
      child: MaterialApp.router(
        localizationsDelegates: [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        title: 'Furniture Shop',
        theme: themeData,
        routerConfig: _router.config(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

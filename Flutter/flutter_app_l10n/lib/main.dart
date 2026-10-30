import 'package:flutter/material.dart';
import 'package:flutter_app_l10n/l10n/app_localizations.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.blue),
        body: Center(child: HomeScreen()),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Localizations.override(
          context: context,
          locale: Locale('es'),
          child: Builder(
            builder: (context) {
              return Center(
                child: Text(
                  AppLocalizations.of(context)!.greeting,
                  style: TextStyle(fontSize: 20),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

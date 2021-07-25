import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'pages/Main/main_page.dart';
// import 'pages/Onboarding/main_page.dart';
import 'pages/Suggestion/suggestion_page.dart';
import 'pages/Settings/settings_page.dart';

void main() => runApp(MyApp());

const MaterialColor primarySwatch = MaterialColor(0xff1b2d4f, {
  50: Color(0xFFE3F2FD),
  100: Color(0xFFBBDEFB),
  200: Color(0xFF90CAF9),
  300: Color(0xFF64B5F6),
  400: Color(0xFF42A5F5),
  500: Color(0xFF1b2d4f),
  600: Color(0xFF1E88E5),
  700: Color(0xFF1976D2),
  800: Color(0xFF1565C0),
  900: Color(0xFF0D47A1),
});

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RUral',
      theme: ThemeData(
        // backgroundColor: Color(0xff1b2d4f),
        primarySwatch: primarySwatch,
        accentColor: Color(0xfff29d35),
        primaryTextTheme: TextTheme(
          bodyText1: TextStyle(color: Color(0xff1b2d4f)),
        ),
        // scaffoldBackgroundColor: Color(0xfff2f2f2),
      ),
      home: SafeArea(
        child: const Main(),
      ),
    );
  }
}

class Main extends StatelessWidget {
  const Main();

  Widget _render() => MainPage();

  static _showAbout(BuildContext cntx) => showAboutDialog(
        context: cntx,
        applicationName: 'RUral',
        applicationVersion: '3.0',
        applicationLegalese: 'tem não',
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _render(),
      appBar: AppBar(
        title: Text('RUral'),
        elevation: 0,
      ),
      drawer: Drawer(
        child: DrawerHeader(
          child: ListView(
            children: [
              ListTile(
                leading: Icon(CupertinoIcons.settings),
                title: Text('Configuração'),
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (cntx) => SettingsPage(),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(CupertinoIcons.captions_bubble),
                title: Text('Sugerir'),
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (cntx) => SuggestionPage(),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(CupertinoIcons.info),
                title: Text('Sobre'),
                onTap: () => _showAbout(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

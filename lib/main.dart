import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fresh_black/home_page/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      title: 'Fresh Black',
      theme: CupertinoThemeData(
        primaryColor: Color(0xFF0098ff),
      ),
      localizationsDelegates: [
        DefaultMaterialLocalizations.delegate,
        DefaultCupertinoLocalizations.delegate,
        DefaultWidgetsLocalizations.delegate,
      ],
      home: Theme(
        data: ThemeData(textTheme: GoogleFonts.latoTextTheme()),
        // data: ThemeData(fontFamily: "Apercu Pro"),
        child: HomePage(),
      ),
    );
  }
}

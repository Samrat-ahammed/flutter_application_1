import 'package:flutter/material.dart';
import 'package:flutter_application_1/homepage.dart';
import 'package:flutter_application_1/loginpage.dart';
import 'package:flutter_application_1/routes.dart';
import 'package:flutter_application_1/widget/theme.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: Mytheme.lighttheme(context),
      darkTheme: Mytheme.lighttheme(context),
      initialRoute: '/',
      routes: {
        '/': (context) => loginpage(),
        Myroutes.homeroute: (context) => homepage(),
        Myroutes.loginroute: (context) => loginpage()
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/pages/login_page.dart';
import 'package:my_app/utils/routes.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          fontFamily: GoogleFonts.lato().fontFamily,
          primaryTextTheme: GoogleFonts.latoTextTheme()),
      debugShowCheckedModeBanner: false,
      initialRoute: ApplicationRoutes.homeRoute,
      routes: {
        ApplicationRoutes.homeRoute: (context) => const HomePage(),
        ApplicationRoutes.loginRoute: (context) => const LoginPage()
      },
    );
  }
}

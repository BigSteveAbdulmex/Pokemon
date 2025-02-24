import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:pokemon/pages/home_page.dart';

void main() {}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PokeDex',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreen),
        textTheme: GoogleFonts.quattrocentoSansTextTheme(),
      ),
      home: const HomePage(),
    );
  }
}

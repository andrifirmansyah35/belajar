// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(textTheme: myTextTheme),
      home: const LoremIpsumApp(),
    );
  }
}

class LoremIpsumApp extends StatelessWidget {
  const LoremIpsumApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ListView(
            children: [
              Text(
                'Lorem Ipsum',
                style: Theme.of(context).textTheme.headline4,
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'History, Purpose and Usage',
                style: Theme.of(context).textTheme.headline5,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero's De Finibus Bonorum et Malorum for use in a type specimen book. It usually begins with:",
                style: Theme.of(context).textTheme.bodyText2,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                '“Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.”',
                style: Theme.of(context).textTheme.caption,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "The purpose of lorem ipsum is to create a natural looking block of text (sentence, paragraph, page, etc.) that doesn't distract from the layout. A practice not without controversy, laying out pages with meaningless filler text can be very useful when the focus is meant to be on design, not content.",
                style: Theme.of(context).textTheme.bodyText2,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "The passage experienced a surge in popularity during the 1960s when Letraset used it on their dry-transfer sheets, and again during the 90s as desktop publishers bundled the text with their software. Today it's seen all around the web; on templates, websites, and stock designs. Use our generator to get your own, or read on for the authoritative history of lorem ipsum.",
                style: Theme.of(context).textTheme.bodyText2,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Source: https://loremipsum.io/',
                style: Theme.of(context).textTheme.overline,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// text Threme -----------------------------------

final myTextTheme = TextTheme(
  headline1: GoogleFonts.lemonada(
      fontSize: 82, fontWeight: FontWeight.w300, letterSpacing: -1.5),
  headline2: GoogleFonts.lemonada(
      fontSize: 51, fontWeight: FontWeight.w300, letterSpacing: -0.5),
  headline3: GoogleFonts.lemonada(fontSize: 41, fontWeight: FontWeight.w400),
  headline4: GoogleFonts.lemonada(
      fontSize: 29, fontWeight: FontWeight.w400, letterSpacing: 0.25),
  headline5: GoogleFonts.lemonada(fontSize: 20, fontWeight: FontWeight.w400),
  headline6: GoogleFonts.lemonada(
      fontSize: 17, fontWeight: FontWeight.w500, letterSpacing: 0.15),
  subtitle1: GoogleFonts.lemonada(
      fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.15),
  subtitle2: GoogleFonts.lemonada(
      fontSize: 12, fontWeight: FontWeight.w500, letterSpacing: 0.1),
  bodyText1: GoogleFonts.sourceSerifPro(
      fontSize: 18, fontWeight: FontWeight.w400, letterSpacing: 0.5),
  bodyText2: GoogleFonts.sourceSerifPro(
      fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.25),
  button: GoogleFonts.sourceSerifPro(
      fontSize: 16, fontWeight: FontWeight.w500, letterSpacing: 1.25),
  caption: GoogleFonts.sourceSerifPro(
      fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.4),
  overline: GoogleFonts.sourceSerifPro(
      fontSize: 11, fontWeight: FontWeight.w400, letterSpacing: 1.5),
);

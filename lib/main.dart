import 'package:flutter/material.dart';
import 'package:mycode/home.dart';
import 'package:mycode/responsive/fitted_box.dart';
import 'package:mycode/responsive/flexible_expanded.dart';
import 'package:mycode/responsive/layout_builder.dart';
import 'package:mycode/responsive/media_query.dart';
import 'package:mycode/shared_preference/second_page.dart';
import 'package:mycode/shared_preference/shared_pref.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Code',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        FittedBoxPage.route: (context) => const FittedBoxPage(),
        FlexibleExpandedPage.route: (context) => const FlexibleExpandedPage(),
        MediaQueryPage.route: (context) => const MediaQueryPage(),
        SharedPrefPage.route: (context) => const SharedPrefPage(),
        SecondPage.route: (context) => const SecondPage(),
        LayoutBuilderPage.route: (context) => const LayoutBuilderPage(),
      },
    );
  }
}

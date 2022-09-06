import 'package:flutter/material.dart';
import 'package:mycode/responsive/fitted_box.dart';
import 'package:mycode/responsive/flexible_expanded.dart';
import 'package:mycode/responsive/media_query.dart';
import 'package:mycode/shared_preference/shared_pref.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Homepage"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () =>
                  Navigator.pushNamed(context, FittedBoxPage.route),
              child: const Text('Fitted Box'),
            ),
            ElevatedButton(
              onPressed: () =>
                  Navigator.pushNamed(context, FlexibleExpandedPage.route),
              child: const Text('Flexible & Expanded'),
            ),
            ElevatedButton(
              onPressed: () =>
                  Navigator.pushNamed(context, MediaQueryPage.route),
              child: const Text('Media Query'),
            ),
            ElevatedButton(
              onPressed: () =>
                  Navigator.pushNamed(context, SharedPrefPage.route),
              child: const Text('Shared Preference'),
            ),
          ],
        ),
      ),
    );
  }
}

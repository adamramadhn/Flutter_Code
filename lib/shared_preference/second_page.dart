import 'package:flutter/material.dart';
import 'package:mycode/shared_preference/shared_pref.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);
  static String route = 'second_page';
  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  late SharedPreferences sharedPreferences;
  String? username;
  @override
  void initState() {
    super.initState();
    sharePref();
  }

  sharePref() async {
    sharedPreferences = await SharedPreferences.getInstance();
    setState(() {
      username = sharedPreferences.getString('username');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () async {
                await sharedPreferences.setBool('isLogin', false);
                await sharedPreferences.remove('username');
                Navigator.pushReplacementNamed(context, SharedPrefPage.route);
              },
              icon: const Icon(Icons.logout))
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Text(
            "Hello $username",
            style: const TextStyle(fontSize: 28),
          ),
        ),
      ),
    );
  }
}

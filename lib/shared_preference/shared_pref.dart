import 'package:flutter/material.dart';
import 'package:mycode/shared_preference/second_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefPage extends StatefulWidget {
  const SharedPrefPage({Key? key}) : super(key: key);
  static String route = 'shared_pref_page';
  @override
  State<SharedPrefPage> createState() => _SharedPrefPageState();
}

class _SharedPrefPageState extends State<SharedPrefPage> {
  late SharedPreferences sharedPreferences;
  TextEditingController usernameController = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sharePref();
  }

  sharePref() async {
    sharedPreferences = await SharedPreferences.getInstance();
    final data = sharedPreferences.getBool('isLogin');
    if (data == true) {
      Navigator.pushReplacementNamed(context, SecondPage.route);
    }
  }

  @override
  void dispose() {
    usernameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SharedPreference"),
      ),
      body: Column(
        children: [
          TextFormField(
            controller: usernameController,
            decoration: const InputDecoration(hintText: 'Username'),
          ),
          ElevatedButton(
            onPressed: () async {
              if (usernameController.text.isNotEmpty) {
                await sharedPreferences.setString(
                    'username', usernameController.text);
                await sharedPreferences.setBool('isLogin', true);
                Navigator.pushReplacementNamed(context, SecondPage.route);
              }
            },
            child: const Text("Login"),
          ),
        ],
      ),
    );
  }
}

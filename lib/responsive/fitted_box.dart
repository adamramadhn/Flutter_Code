import 'package:flutter/material.dart';

class FittedBoxPage extends StatelessWidget {
  const FittedBoxPage({Key? key}) : super(key: key);
  static String route = 'fitted_box_page';
  @override
  Widget build(BuildContext context) {
    double fontSize = 32.0;
    double heightBox = 100.0;
    double weightBox = 300.0;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Fitted Box"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                children: [
                  Container(
                    height: heightBox,
                    width: weightBox,
                    color: Colors.blue,
                    child: Center(
                      child: FittedBox(
                        child: Text(
                          "Halo",
                          style: TextStyle(
                              color: Colors.white, fontSize: fontSize),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: heightBox,
                    width: weightBox,
                    color: Colors.blue,
                    child: Center(
                      child: FittedBox(
                        child: Text(
                          "Halooooooooooooooooooooooooooooooo",
                          style: TextStyle(
                              color: Colors.white, fontSize: fontSize),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class LayoutBuilderPage extends StatefulWidget {
  const LayoutBuilderPage({Key? key}) : super(key: key);
  static String route = 'layout_builder_page';

  @override
  State<LayoutBuilderPage> createState() => _LayoutBuilderPageState();
}

class _LayoutBuilderPageState extends State<LayoutBuilderPage> {
  bool isChange = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  isChange = !isChange;
                });
              },
              icon: const Icon(Icons.change_circle))
        ],
      ),
      body: SafeArea(
        child: Container(
          height: isChange ? 200 : 500,
          width: MediaQuery.of(context).size.width,
          color: Colors.grey,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              MyContainer(),
              MyContainer(),
              MyContainer(),
            ],
          ),
        ),
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  const MyContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          width: MediaQuery.of(context).size.width * 0.25,
          height: constraints.maxHeight * 0.5,
          color: Colors.amber,
        );
      },
    );
  }
}

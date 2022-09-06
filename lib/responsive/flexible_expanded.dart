import 'package:flutter/material.dart';

class FlexibleExpandedPage extends StatefulWidget {
  const FlexibleExpandedPage({Key? key}) : super(key: key);
  static String route = 'flexible_expanded_page';

  @override
  State<FlexibleExpandedPage> createState() => _FlexibleExpandedPageState();
}

class _FlexibleExpandedPageState extends State<FlexibleExpandedPage> {
  bool switchs = false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flexible & Expanded"),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  switchs = !switchs;
                });
              },
              icon: const Icon(Icons.change_circle))
        ],
      ),
      body: Column(
        children: [
          Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                flex: 1,
                child: Container(
                  height: 100,
                  color: Colors.red,
                  child: const Text("Flexible 1"),
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  height: 100,
                  color: Colors.green,
                  child: const Text("Flexible 2"),
                ),
              ),
              Flexible(
                flex: 1,
                child: Container(
                  height: 100,
                  color: Colors.amber,
                  child: const Text("Flexible 3"),
                ),
              ),
            ],
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  height: 100,
                  color: Colors.red,
                  child: const Text("Expanded 1"),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: 100,
                  color: Colors.green,
                  child: const Text("Expanded 2"),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: 100,
                  color: Colors.amber,
                  child: const Text(
                    "Expanded 3",
                  ),
                ),
              ),
            ],
          ),
          if (switchs)
            Flexible(
              child: Container(
                color: Colors.black,
                child: ListView.builder(
                  itemCount: 15,
                  // physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => Container(
                    height: 50,
                    margin: const EdgeInsets.all(5),
                    padding: const EdgeInsets.all(5),
                    color: Colors.blueAccent,
                    child: Text(
                      "data ke - ${index + 1}",
                      style: const TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                ),
              ),
            ),
          if (!switchs)
            Expanded(
              child: Container(
                color: Colors.grey,
                child: ListView.builder(
                  itemCount: 15,
                  // physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => Container(
                    height: 50,
                    margin: const EdgeInsets.all(5),
                    padding: const EdgeInsets.all(5),
                    color: Colors.blueAccent,
                    child: Text(
                      "data ke - ${index + 1}",
                      style: const TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

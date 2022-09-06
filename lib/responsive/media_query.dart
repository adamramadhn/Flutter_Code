import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MediaQueryPage extends StatefulWidget {
  const MediaQueryPage({Key? key}) : super(key: key);
  static String route = 'media_query_page';

  @override
  State<MediaQueryPage> createState() => _MediaQueryPageState();
}

class _MediaQueryPageState extends State<MediaQueryPage> {
  bool isRotate = false;
  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    final myAppBar = AppBar(
      title: const Text("Media Query Responsive"),
      actions: [
        IconButton(
            onPressed: () {
              setState(() {
                isRotate = !isRotate;
                if (isRotate) {
                  SystemChrome.setPreferredOrientations(
                      [DeviceOrientation.portraitUp]);
                } else {
                  SystemChrome.setPreferredOrientations(
                      [DeviceOrientation.landscapeLeft]);
                }
              });
            },
            icon: const Icon(Icons.rotate_90_degrees_ccw))
      ],
    );

    final bodyHeight = mediaQueryHeight -
        myAppBar.preferredSize.height -
        MediaQuery.of(context).padding.top;

    final bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Scaffold(
      appBar: myAppBar,
      body: Center(
        child: (isLandscape)
            ? Column(
                children: [
                  Container(
                    height: bodyHeight * 0.5,
                    width: mediaQueryWidth,
                    color: Colors.amber,
                  ),
                  SizedBox(
                    // color: Colors.red,
                    height: bodyHeight * 0.5,
                    child: GridView.builder(
                      itemCount: 30,
                      itemBuilder: (context, index) {
                        return GridTile(
                          child: Container(
                            color: Color.fromARGB(255, Random().nextInt(156),
                                Random().nextInt(156), Random().nextInt(156)),
                            child: const Center(
                                child: Text(
                              "Halo Nakama..",
                              style: TextStyle(color: Colors.white),
                            )),
                          ),
                        );
                      },
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 10),
                    ),
                  )
                ],
              )
            : Column(
                children: [
                  Container(
                    height: bodyHeight * 0.3,
                    width: mediaQueryWidth,
                    color: Colors.amber,
                  ),
                  Container(
                    color: Colors.green,
                    height: bodyHeight * 0.7,
                    child: ListView.builder(
                      itemCount: 30,
                      itemBuilder: (context, index) {
                        return const ListTile(
                          leading: CircleAvatar(),
                          title: Text("Halo Nakama.."),
                        );
                      },
                    ),
                  )
                ],
              ),
      ),
    );
  }
}

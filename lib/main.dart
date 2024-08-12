import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    List colorList = [
      Colors.red,
      Colors.yellow,
      Colors.green,
      Colors.amber,
      Colors.grey,
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
            child: Column(
          children: [
            const Text("data"),
            SizedBox(
              height: 300,
              child: PageView.builder(
                itemCount: colorList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                  alignment: Alignment.center,
                  color: colorList[index],
                  child: Text(
                    index.toString(),
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        )),
        // child: SingleChildScrollView(
        //   child: Column(
        //     children: [
        //       Container(
        //         width: double.infinity,
        //         color: Colors.red,
        //         height: 60,
        //         alignment: Alignment.center,
        //         child: const Text(
        //           "My Title",
        //           style: TextStyle(color: Colors.white),
        //         ),
        //       ),
        //       ListView.separated(
        //         physics: AlwaysScrollableScrollPhysics(),
        //         shrinkWrap: true,
        //         itemBuilder: (context, index) => Container(
        //           height: 200,
        //           color: Colors.blueGrey,
        //         ),
        //         separatorBuilder: (context, index) => const SizedBox(
        //           height: 20,
        //         ),
        //         itemCount: 13,
        //       ),
        //     ],
        //   ),
        // ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(
      MyApp()); // I am running the code on chrome as I could not run it in Android simulator
}

class MyApp extends StatelessWidget {
  final Color customColor = const Color(0xFF7C7DED); // defining the color
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        margin: const EdgeInsets.only(top: 80),
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text(
              'Grade Calculator',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: customColor,
              ),
            ),
            centerTitle: true,
          ),
          body: SafeArea(
            child: Center(
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(30),
                    margin: const EdgeInsets.only(
                        top: 200, bottom: 10, left: 200, right: 200),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: customColor, width: 3),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Math:',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                            Text('A', style: TextStyle(fontSize: 20)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Physics:',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                            Text('B', style: TextStyle(fontSize: 20)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Chemistry:',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                            Text('C', style: TextStyle(fontSize: 20)),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "-",
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              "-",
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              "-",
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),

                  // We create this Container for the calculate bottom
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    margin:
                        const EdgeInsets.only(top: 150, left: 300, right: 300),
                    decoration: BoxDecoration(
                      color: customColor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Center(
                      child: Text(
                        'Calculate',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
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

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Basketball points app',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int numOfPointsTeamA = 0;
  int numOfPointsTeamB = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text(
          'Basketball Points Counter',
          style: TextStyle(fontSize: 23),
        ),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 30.0, left: 20, right: 20, bottom: 30),
        child: Column(
          children: [
            SizedBox(
              height: 468,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            'Team A',
                            style: TextStyle(
                                fontSize: 35, fontWeight: FontWeight.w400),
                          ),
                          Flexible(
                            child: AutoSizeText(
                              '$numOfPointsTeamA',
                              maxFontSize: 200,
                              minFontSize: 100,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                numOfPointsTeamA++;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Colors.orange),
                            child: const Text(
                              'Add 1 point',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                numOfPointsTeamA += 2;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Colors.orange),
                            child: const Text(
                              'Add 2 point',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                numOfPointsTeamA += 3;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Colors.orange),
                            child: const Text(
                              'Add 3 point',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ),
                          ),
                        ]),
                  ),
                  const VerticalDivider(
                    color: Colors.grey,
                    thickness: 0.5,
                    width: 70,
                    indent: 30,
                    endIndent: 30,
                  ),
                  Flexible(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            'Team B',
                            style: TextStyle(
                                fontSize: 35, fontWeight: FontWeight.w400),
                          ),
                          Flexible(
                            child: AutoSizeText(
                              '$numOfPointsTeamB',
                              maxFontSize: 200,
                              minFontSize: 100,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                numOfPointsTeamB++;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Colors.orange),
                            child: const Text(
                              'Add 1 point',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                numOfPointsTeamB += 2;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Colors.orange),
                            child: const Text(
                              'Add 2 point',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                numOfPointsTeamB += 3;
                              });
                            },
                            style: ElevatedButton.styleFrom(
                                primary: Colors.orange),
                            child: const Text(
                              'Add 3 point',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ),
                          ),
                        ]),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    numOfPointsTeamA = 0;
                    numOfPointsTeamB = 0;
                  });
                },
                style: ElevatedButton.styleFrom(primary: Colors.orange),
                child: const Text(
                  'Reset',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w500),
                ))
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:basketball_points_app/cubit/counter_cubit.dart';
import 'package:basketball_points_app/cubit/counter_states.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(CounterAIncrementState),
      child: const MaterialApp(
        title: 'Basketball points app',
        home: HomePage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterStates>(
        builder: ((context, state) => Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.orange,
                title: const Text(
                  'Basketball Points Counter',
                  style: TextStyle(fontSize: 23),
                ),
              ),
              body: Padding(
                padding: const EdgeInsets.only(
                    top: 30.0, left: 20, right: 20, bottom: 30),
                child: Column(
                  children: [
                    SizedBox(
                      height: 468,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Text(
                                    'Team A',
                                    style: TextStyle(
                                        fontSize: 35,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Flexible(
                                    child: AutoSizeText(
                                      '${BlocProvider.of<CounterCubit>(context).numOfPointsTeamA}',
                                      maxFontSize: 200,
                                      minFontSize: 100,
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      BlocProvider.of<CounterCubit>(context)
                                          .teamPointsIncrement(
                                              team: 'A', numOfPoints: 1);
                                    },
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.orange),
                                    child: const Text(
                                      'Add 1 point',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 20),
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      BlocProvider.of<CounterCubit>(context)
                                          .teamPointsIncrement(
                                              team: 'A', numOfPoints: 2);
                                    },
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.orange),
                                    child: const Text(
                                      'Add 2 point',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 20),
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      BlocProvider.of<CounterCubit>(context)
                                          .teamPointsIncrement(
                                              team: 'A', numOfPoints: 3);
                                    },
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.orange),
                                    child: const Text(
                                      'Add 3 point',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 20),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Text(
                                    'Team B',
                                    style: TextStyle(
                                        fontSize: 35,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Flexible(
                                    child: AutoSizeText(
                                      '${BlocProvider.of<CounterCubit>(context).numOfPointsTeamB}',
                                      maxFontSize: 200,
                                      minFontSize: 100,
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      BlocProvider.of<CounterCubit>(context)
                                          .teamPointsIncrement(
                                              team: 'B', numOfPoints: 1);
                                    },
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.orange),
                                    child: const Text(
                                      'Add 1 point',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 20),
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      BlocProvider.of<CounterCubit>(context)
                                          .teamPointsIncrement(
                                              team: 'B', numOfPoints: 2);
                                    },
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.orange),
                                    child: const Text(
                                      'Add 2 point',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 20),
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      BlocProvider.of<CounterCubit>(context)
                                          .teamPointsIncrement(
                                              team: 'B', numOfPoints: 3);
                                    },
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.orange),
                                    child: const Text(
                                      'Add 3 point',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 20),
                                    ),
                                  ),
                                ]),
                          ),
                        ],
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .resetPointsCounter(
                                  teamAPoints:
                                      BlocProvider.of<CounterCubit>(context)
                                          .numOfPointsTeamA,
                                  teamBPoints:
                                      BlocProvider.of<CounterCubit>(context)
                                          .numOfPointsTeamB);
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
            )),
        listener: ((context, state) {
          if (state is CounterAIncrementState) {
          } else {}
        }));
  }
}

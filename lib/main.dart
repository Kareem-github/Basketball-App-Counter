import 'package:basketball_counter/cubit/counter_cubit.dart';
import 'package:basketball_counter/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
        builder: (context, state) {
          return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.orange,
                title: Text('Points Counter'),
              ),
              body: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 400,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Team A',
                              style: TextStyle(
                                fontSize: 30,
                              ),
                            ),
                            Text(
                              '${BlocProvider.of<CounterCubit>(context).teamAPoints}',
                              style: TextStyle(
                                fontSize: 105,
                              ),
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.orange,
                                  minimumSize: Size(125, 40),
                                ),
                                onPressed: () {
                                  BlocProvider.of<CounterCubit>(context)
                                      .TeamIncreament(
                                          team: 'A', buttonNumber: 1);
                                },
                                child: Text(
                                  'Add 1 Point',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 17),
                                )),
                            Spacer(
                              flex: 2,
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.orange,
                                  minimumSize: Size(125, 40),
                                ),
                                onPressed: () {
                                  BlocProvider.of<CounterCubit>(context)
                                      .TeamIncreament(
                                          team: 'A', buttonNumber: 2);
                                },
                                child: Text(
                                  'Add 2 Points',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 17),
                                )),
                            Spacer(
                              flex: 2,
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.orange,
                                  minimumSize: Size(125, 40),
                                ),
                                onPressed: () {
                                  BlocProvider.of<CounterCubit>(context)
                                      .TeamIncreament(
                                          team: 'A', buttonNumber: 3);
                                },
                                child: Text(
                                  'Add 3 Points',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 17),
                                )),
                            Spacer(
                              flex: 8,
                            ),
                          ],
                        ),
                        VerticalDivider(
                          color: Colors.grey,
                          thickness: 1,
                          indent: 20,
                          endIndent: 50,
                        ),
                        Column(
                          children: [
                            Text(
                              'Team B',
                              style: TextStyle(
                                fontSize: 30,
                              ),
                            ),
                            Text(
                              '${BlocProvider.of<CounterCubit>(context).teamBPoints}',
                              style: TextStyle(
                                fontSize: 105,
                              ),
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.orange,
                                  minimumSize: Size(125, 40),
                                ),
                                onPressed: () {
                                  BlocProvider.of<CounterCubit>(context)
                                      .TeamIncreament(
                                          team: 'B', buttonNumber: 1);
                                },
                                child: Text(
                                  'Add 1 Point',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 17),
                                )),
                            Spacer(
                              flex: 2,
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.orange,
                                  minimumSize: Size(125, 40),
                                ),
                                onPressed: () {
                                  BlocProvider.of<CounterCubit>(context)
                                      .TeamIncreament(
                                          team: 'B', buttonNumber: 2);
                                },
                                child: Text(
                                  'Add 2 Points',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 17),
                                )),
                            Spacer(
                              flex: 2,
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.orange,
                                  minimumSize: Size(125, 40),
                                ),
                                onPressed: () {
                                  BlocProvider.of<CounterCubit>(context)
                                      .TeamIncreament(
                                          team: 'B', buttonNumber: 3);
                                },
                                child: Text(
                                  'Add 3 Points',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 17),
                                )),
                            Spacer(
                              flex: 8,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        minimumSize: Size(125, 40),
                      ),
                      onPressed: () {
                        BlocProvider.of<CounterCubit>(context).Reset();
                      },
                      child: Text(
                        'Reset',
                        style: TextStyle(color: Colors.black, fontSize: 17),
                      )),
                ],
              ));
        },
        listener: (context, state) {});
  }
}

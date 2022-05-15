import 'dart:math';

import 'package:flutter/material.dart';
import 'package:time_planner/time_planner.dart';

void main() {
  runApp(CalendarScreen());
}

class CalendarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Agenda',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Agenda'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<TimePlannerTask> tasks = [];

  void _addObject(BuildContext context) {
    List<Color?> colors = [
      Colors.purple,
      Colors.blue,
      Colors.green,
      Colors.orange,
      Colors.lime[600]
    ];

    setState(() {
      tasks.add(
        TimePlannerTask(
          color: colors[Random().nextInt(colors.length)],
          dateTime: TimePlannerDateTime(
              day: Random().nextInt(14),
              hour: Random().nextInt(18) + 6,
              minutes: Random().nextInt(60)),
          minutesDuration: Random().nextInt(90) + 30,
          daysDuration: Random().nextInt(4) + 1,
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Você clica no objeto do planejador de tempo')));
          },
          child: Text(
            'Teste de agenda',
            style: TextStyle(color: Colors.grey[350], fontSize: 12),
          ),
        ),
      );
    });

    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Tarefa aleatória adicionada!')));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: TimePlanner(
          startHour: 6,
          endHour: 23,
          headers: [
            TimePlannerTitle(
              date: "3/10/2021",
              title: "sunday",
            ),
            TimePlannerTitle(
              date: "3/11/2021",
              title: "monday",
            ),
            TimePlannerTitle(
              date: "3/12/2021",
              title: "tuesday",
            ),
            TimePlannerTitle(
              date: "3/13/2021",
              title: "wednesday",
            ),
            TimePlannerTitle(
              date: "3/14/2021",
              title: "thursday",
            ),
            TimePlannerTitle(
              date: "3/15/2021",
              title: "friday",
            ),
            TimePlannerTitle(
              date: "3/16/2021",
              title: "saturday",
            ),
            TimePlannerTitle(
              date: "3/17/2021",
              title: "sunday",
            ),
            TimePlannerTitle(
              date: "3/18/2021",
              title: "monday",
            ),
            TimePlannerTitle(
              date: "3/19/2021",
              title: "tuesday",
            ),
            TimePlannerTitle(
              date: "3/20/2021",
              title: "wednesday",
            ),
            TimePlannerTitle(
              date: "3/21/2021",
              title: "thursday",
            ),
            TimePlannerTitle(
              date: "3/22/2021",
              title: "friday",
            ),
            TimePlannerTitle(
              date: "3/23/2021",
              title: "saturday",
            ),
            TimePlannerTitle(
              date: "3/24/2021",
              title: "tuesday",
            ),
            TimePlannerTitle(
              date: "3/25/2021",
              title: "wednesday",
            ),
            TimePlannerTitle(
              date: "3/26/2021",
              title: "thursday",
            ),
            TimePlannerTitle(
              date: "3/27/2021",
              title: "friday",
            ),
            TimePlannerTitle(
              date: "3/28/2021",
              title: "saturday",
            ),
            TimePlannerTitle(
              date: "3/29/2021",
              title: "friday",
            ),
            TimePlannerTitle(
              date: "3/30/2021",
              title: "saturday",
            ),
          ],
          tasks: tasks,
          style: TimePlannerStyle(
            // cellHeight: 60,
            // cellWidth: 60,
            showScrollBar: true,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _addObject(context),
        tooltip: 'Adiconar tarefa',
        child: Icon(Icons.add),
      ),
    );
  }
}
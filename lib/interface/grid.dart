import 'package:flutter/material.dart';
import 'package:simple_grid/simple_grid.dart';

import 'package:site_renault_rizzi/interface/Grafico4.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple_grid',
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple_grid"),
      ),
      body: SpGrid(width: MediaQuery.of(context).size.width, children: [
        SpGridItem(
          xs: 12,
          sm: 6,
          md: 4,
          lg: 3,
          child: Container(
            color: Colors.blueGrey,
            height: 50,
            child: Center(
              child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.center,
                        child: FittedBox(
                          fit: BoxFit.contain,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MyChart4()));
                            },
                            child: Text('Agenda',
                                style: TextStyle(
                                    fontSize: 11, color: Colors.white)),
                          ),
                        ),
                      ),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start),
            ),
          ),
        ),
        SpGridItem(
          xs: 12,
          sm: 6,
          md: 4,
          lg: 3,
          child: Container(
            color: Colors.green,
            height: 50,
          ),
        ),
        SpGridItem(
          xs: 12,
          sm: 6,
          md: 4,
          lg: 3,
          child: Container(
            color: Colors.blueGrey,
            height: 50,
            child: Center(
              child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.center,
                        child: FittedBox(
                          fit: BoxFit.contain,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MyChart4()));
                            },
                            child: Text('Andamento',
                                style: TextStyle(
                                    fontSize: 11, color: Colors.white)),
                          ),
                        ),
                      ),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start),
            ),
          ),
        ),
        SpGridItem(
          xs: 12,
          sm: 6,
          md: 4,
          lg: 3,
          child: Container(
            color: Colors.green,
            height: 50,
          ),
        ),
        SpGridItem(
          xs: 12,
          sm: 6,
          md: 4,
          lg: 3,
          child: Container(
            color: Colors.blueGrey,
            height: 50,
            child: Center(
              child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        alignment: Alignment.center,
                        child: FittedBox(
                          fit: BoxFit.contain,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MyChart4()));
                            },
                            child: Text('Dashboard',
                                style: TextStyle(
                                    fontSize: 11, color: Colors.white)),
                          ),
                        ),
                      ),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start),
            ),
          ),
        ),
      ]),
    );
  }
}

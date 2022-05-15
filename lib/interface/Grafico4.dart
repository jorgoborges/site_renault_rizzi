import 'package:d_chart/d_chart.dart';
import 'package:flutter/material.dart';
import 'package:site_renault_rizzi/interface/Grafico3.dart';

void main() {
  runApp(MyChart4());
}

class MyChart4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        actions: [
          ElevatedButton.icon(
            onPressed: () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (_) => MyChart3())),
            icon: const Icon(Icons.arrow_circle_left_outlined),
            label: const Text('Voltar'),
          ),
          ElevatedButton.icon(
            onPressed: () => Navigator.of(context)
                .pushReplacement(MaterialPageRoute(builder: (_) => MyChart4())),
            icon: const Icon(Icons.arrow_circle_right_outlined),
            label: const Text('Avançar'),
          ),

        ],
      ),
      backgroundColor: Colors.blueGrey,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(children: [
                Expanded(
                    child: Container(
                  child: SizedBox(
                    height: 10,
                  ),
                )),
                Expanded(
                    child: Container(
                  child: SizedBox(
                    height: 10,
                  ),
                )),
                Expanded(
                    child: Container(
                  child: SizedBox(
                    height: 10,
                  ),
                )),
              ], mainAxisAlignment: MainAxisAlignment.center),
              ListTile(
                title: Text('Apontamento por descrição'),
                tileColor: Colors.blueGrey,
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: AspectRatio(
                  aspectRatio: 16 / 9,
                  child: DChartPie(
                    data: [
                      {'domain': 'Base', 'measure': 28},
                      {'domain': 'Escrape Curso', 'measure': 27},
                      {'domain': 'Escrape Histórico', 'measure': 20},
                    ],
                    fillColor: (pieData, index) {
                      switch (pieData['domain']) {
                        case 'Base':
                          return Colors.red;
                        case 'Escrape Curso':
                          return Colors.orangeAccent;
                        case 'Escrape Histórico':
                          return Colors.greenAccent;
                        default:
                          return Colors.orange;
                      }
                    },
                    pieLabel: (pieData, index) {
                      return "${pieData['domain']}:\n${pieData['measure']}%";
                    },
                    labelPosition: PieLabelPosition.outside,
                    donutWidth: 20,
                  ),
                ),
              ),
              ListTile(
                title: Text('Termômetro por Grau'),
                tileColor: Colors.blueGrey,
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: AspectRatio(
                  aspectRatio: 16 / 9,
                  child: DChartGauge(
                    data: [
                      {'domain': '1', 'measure': 30},
                      {'domain': '2', 'measure': 20},
                      {'domain': '3', 'measure': 10},
                    ],
                    fillColor: (pieData, index) {
                      switch (pieData['domain']) {
                        case '3':
                          return Colors.green;
                        case '1':
                          return Colors.orange;
                        default:
                          return Colors.red;
                      }
                    },
                    showLabelLine: false,
                    pieLabel: (pieData, index) {
                      return "${pieData['domain']}";
                    },
                    labelPosition: PieLabelPosition.inside,
                    labelPadding: 0,
                    labelColor: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

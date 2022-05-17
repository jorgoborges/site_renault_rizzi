import 'package:d_chart/d_chart.dart';
import 'package:flutter/material.dart';
import 'package:site_renault_rizzi/interface/4BackOfficePanel.dart';
import 'package:site_renault_rizzi/interface/Grafico2.dart';
import 'package:site_renault_rizzi/interface/Grafico4.dart';

void main() {
  runApp(MyChart3());
}

class MyChart3 extends StatelessWidget {
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
            onPressed: () => Navigator.of(context)
                .pushReplacement(MaterialPageRoute(builder: (_) => MyChart2())),
            icon: const Icon(Icons.arrow_circle_left_outlined),
            label: const Text('Voltar'),
          ),
          ElevatedButton.icon(
            onPressed: () => Navigator.of(context)
                .pushReplacement(MaterialPageRoute(builder: (_) => MyChart4())),
            icon: const Icon(Icons.arrow_circle_right_outlined),
            label: const Text('Avançar'),
          ),
          ElevatedButton.icon(
            onPressed: () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (_) => BackOfficePanel())),
            icon: const Icon(Icons.menu_open),
            label: const Text('Menu'),
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
              Padding(
                padding: EdgeInsets.all(25),
                child: Container(
                  child: SizedBox(
                    height: 600,
                    width: double.infinity,
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
                ),
              ),
              ListTile(
                title: Text('Apontamento por descrição 03'),
                tileColor: Colors.blueGrey,
              ),
              Padding(
                padding: EdgeInsets.all(25),
              ),
              Padding(
                padding: EdgeInsets.all(25),
                child: Container(
                  child: SizedBox(
                    height: 600,
                    width: double.infinity,
                    child: AspectRatio(
                      aspectRatio: 16 / 9,
                      child: DChartGauge(
                        data: [
                          {'domain': '1', 'measure': 30},
                          {'domain': '2', 'measure': 20},
                          {'domain': '3', 'measure': 50},
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
                ),
              ),
              ListTile(
                title: Text('Termômetro por Grau'),
                tileColor: Colors.blueGrey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

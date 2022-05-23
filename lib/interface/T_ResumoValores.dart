import 'package:flutter/material.dart';
import 'package:simple_grid/simple_grid.dart';
import 'package:d_chart/d_chart.dart';
import 'package:site_renault_rizzi/interface/Tel_Chart_1.dart';
import 'package:site_renault_rizzi/interface/Tel_Menu.dart';

void main() {
  runApp(T_ResumoValores());
}

class T_ResumoValores extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple_grid',
      theme: ThemeData(
        brightness: Brightness.light,
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
        actions: [
          ElevatedButton.icon(
            onPressed: () => Navigator.of(context)
                .pushReplacement(MaterialPageRoute(builder: (_) => Tel_Menu())),
            icon: const Icon(Icons.arrow_circle_left_outlined),
            label: const Text('Voltar'),
          ),
          ElevatedButton.icon(
            onPressed: () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (_) => Tel_Chart_1())),
            icon: const Icon(Icons.arrow_circle_right_outlined),
            label: const Text('Avançar'),
          ),
          Padding(
            padding: EdgeInsets.all(40),
          ),
        ],
      ),
      body: Container(
        child: ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: false,
            children: [
              SpGrid(width: MediaQuery.of(context).size.width, children: [
                SpGridItem(
                  xs: 12,
                  sm: 6,
                  md: 4,
                  lg: 3,
                  child: Container(
                    child: Container(
                      child: SizedBox(
                        height: 225,
                        width: 80,
                        child: AspectRatio(
                          aspectRatio: 16 / 9,
                          child: DChartBar(
                            data: [
                              {
                                'id': 'Bar',
                                'data': [
                                  {'domain': 'Qtd.OSs', 'measure': 150},
                                  {'domain': 'Apuradas', 'measure': 74},
                                  {'domain': 'Pendentes', 'measure': 76},
                                  {'domain': 'Grau 1', 'measure': 33},
                                  {'domain': 'Grau 2', 'measure': 41},
                                ],
                              },
                            ],
                            yAxisTitle: '',
                            domainLabelPaddingToAxisLine: 16,
                            axisLineTick: 2,
                            axisLinePointTick: 2,
                            axisLinePointWidth: 8,
                            axisLineColor: Colors.black,
                            measureLabelPaddingToAxisLine: 16,
                            barColor: (barData, index, id) =>
                                barData['measure'] >= 4
                                    ? Colors.blue
                                    : Colors.black87,
                            barValue: (barData, index) =>
                                '${barData['measure']}',
                            showBarValue: true,
                            barValuePosition: BarValuePosition.auto,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SpGridItem(
                  xs: 12,
                  sm: 6,
                  md: 4,
                  lg: 3,
                  child: Container(
                    child: Container(
                      child: SizedBox(
                        height: 225,
                        width: 80,
                        child: AspectRatio(
                          aspectRatio: 16 / 9,
                          child: DChartBar(
                            data: [
                              {
                                'id': 'Bar',
                                'data': [
                                  {'domain': 'Base', 'measure': 10000},
                                  {'domain': 'Grau-1', 'measure': 8000},
                                  {'domain': 'Grau-2', 'measure': 2000},
                                ],
                              },
                            ],
                            yAxisTitle: '',
                            measureMin: 0,
                            measureMax: 100000,
                            minimumPaddingBetweenLabel: 1,
                            domainLabelPaddingToAxisLine: 8,
                            axisLineTick: 2,
                            axisLinePointTick: 1,
                            axisLinePointWidth: 10,
                            axisLineColor: Colors.black,
                            measureLabelPaddingToAxisLine: 8,
                            verticalDirection: false,
                            barColor: (barData, index, id) =>
                                barData['measure'] >= 4
                                    ? Colors.green.shade300
                                    : Colors.green.shade700,
                            barValue: (barData, index) =>
                                '${barData['measure']}',
                            showBarValue: true,
                            barValuePosition: BarValuePosition.auto,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SpGridItem(
                    xs: 12,
                    sm: 6,
                    md: 4,
                    lg: 3,
                    child: Container(
                      child: SizedBox(
                        height: 200,
                        width: 200,
                        child: AspectRatio(
                          aspectRatio: 16 / 9,
                          child: DChartPie(
                            data: [
                              {'domain': 'Ok', 'measure': 13},
                              {'domain': 'Grau-1', 'measure': 50},
                              {'domain': 'Grau-2', 'measure': 37},
                            ],
                            fillColor: (pieData, index) {
                              switch (pieData['domain']) {
                                case 'Ok':
                                  return Colors.green;

                                case 'Grau-1':
                                  return Colors.deepOrange;
                                default:
                                  return Colors.orange;
                              }
                            },
                            pieLabel: (pieData, index) {
                              return "${pieData['domain']}:\n${pieData['measure']}%";
                            },
                            labelPosition: PieLabelPosition.inside,
                          ),
                        ),
                      ),
                    ),
                    aligment: Alignment.center),
              ]),
            ]),
      ),
    );
  }
}

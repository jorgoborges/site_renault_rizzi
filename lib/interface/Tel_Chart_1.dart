import 'package:d_chart/d_chart.dart';
import 'package:flutter/material.dart';
import 'package:site_renault_rizzi/interface/Tel_Chart_3.dart';
import 'package:site_renault_rizzi/interface/Tel_Chart_2.dart';

void main() {
  runApp(Tel_Chart_1());
}

class Tel_Chart_1 extends StatelessWidget {
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
                .pushReplacement(MaterialPageRoute(builder: (_) => Tel_Chart_3())),
            icon: const Icon(Icons.arrow_circle_left_outlined),
            label: const Text('Voltar'),
          ),
          ElevatedButton.icon(
            onPressed: () => Navigator.of(context)
                .pushReplacement(MaterialPageRoute(builder: (_) => Tel_Chart_2())),
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
                    width: 80,
                  ),
                )),
              ], mainAxisAlignment: MainAxisAlignment.center),
              ListTile(
                title: Text('Grau por item 02'),
                tileColor: Colors.blueGrey,
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Container(
                  child: SizedBox(
                    height: 600,
                    width: double.infinity,
                    child: AspectRatio(
                      aspectRatio: 1 / 1,
                      child: DChartBar(
                        data: [
                          {
                            'id': 'Bar',
                            'data': [
                              {'domain': '1', 'measure': 3200.54},
                              {'domain': '23', 'measure': 3450.01},
                              {'domain': '18', 'measure': 2651.12},
                              {'domain': '12', 'measure': 78521.25},
                            ],
                          },
                        ],
                        yAxisTitle: 'Item',
                        measureMin: 0,
                        measureMax: 100000,
                        minimumPaddingBetweenLabel: 1,
                        domainLabelPaddingToAxisLine: 8,
                        axisLineTick: 2,
                        axisLinePointTick: 2,
                        axisLinePointWidth: 10,
                        axisLineColor: Colors.red,
                        measureLabelPaddingToAxisLine: 8,
                        verticalDirection: false,
                        barColor: (barData, index, id) =>
                            barData['measure'] >= 4
                                ? Colors.green.shade300
                                : Colors.green.shade700,
                        barValue: (barData, index) => '${barData['measure']}',
                        showBarValue: true,
                        barValuePosition: BarValuePosition.outside,
                      ),
                    ),
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

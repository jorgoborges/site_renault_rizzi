import 'package:d_chart/d_chart.dart';
import 'package:flutter/material.dart';
import 'package:site_renault_rizzi/interface/4BackOfficePanel.dart';
import 'package:site_renault_rizzi/interface/Grafico2.dart';



void main() {
  runApp(MyChart1());
}

class MyChart1 extends StatelessWidget {
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
                MaterialPageRoute(builder: (_) => BackOfficePanel())),
            icon: const Icon(Icons.arrow_circle_left_outlined),
            label: const Text('Voltar'),
          ),
          ElevatedButton.icon(
            onPressed: () => Navigator.of(context)
                .pushReplacement(MaterialPageRoute(builder: (_) => MyChart2())),
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
                title: Text('Grau por Quantidade 01'),
                tileColor: Colors.blueGrey,
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: AspectRatio(
                  aspectRatio: 16 / 9,
                  child: DChartBar(
                    data: [
                      {
                        'id': 'Qtd por Grau',
                        'data': [
                          {'domain': 'Qtd Grau-1', 'measure': 123},
                          {'domain': 'Qtd Grau-2', 'measure': 214},
                          {'domain': 'Qtd Grau-3', 'measure': 360},
                        ],
                      },
                    ],
                    domainLabelPaddingToAxisLine: 16,
                    axisLineTick: 2,
                    axisLinePointTick: 2,
                    axisLinePointWidth: 8,
                    axisLineColor: Colors.red,
                    measureLabelPaddingToAxisLine: 16,
                    barColor: (barData, index, id) => barData['measure'] >= 4
                        ? Colors.green.shade300
                        : Colors.green.shade700,
                    barValue: (barData, index) => '${barData['measure']}',
                    showBarValue: true,
                    barValuePosition: BarValuePosition.auto,
                  ),
                ),
              ),
              ListTile(
                title: Text('Montante por Grau'),
                tileColor: Colors.blueGrey,
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          AspectRatio(
                            aspectRatio: 16 / 9,
                            child: DChartBar(
                              data: [
                                {
                                  'id': 'Bar 1',
                                  'data': [
                                    {
                                      'domain': 'Valor Grau-1',
                                      'measure': 1700.85
                                    },
                                    {
                                      'domain': 'Valor Grau-2',
                                      'measure': 2830.23
                                    },
                                    {
                                      'domain': 'Valor Grau-3',
                                      'measure': 1265.52
                                    },
                                  ],
                                },
                              ],
                              minimumPaddingBetweenLabel: 1,
                              domainLabelPaddingToAxisLine: 16,
                              axisLineTick: 2,
                              axisLinePointTick: 2,
                              axisLinePointWidth: 10,
                              axisLineColor: Colors.blue,
                              measureLabelPaddingToAxisLine: 16,
                              barColor: (barData, index, id) => id == 'Bar 1'
                                  ? Colors.green.shade300
                                  : id == 'Bar 2'
                                      ? Colors.green.shade600
                                      : Colors.green.shade900,
                              barValue: (barData, index) =>
                                  '${barData['measure']}',
                              showBarValue: true,
                              barValueFontSize: 12,
                              barValuePosition: BarValuePosition.outside,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 8),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

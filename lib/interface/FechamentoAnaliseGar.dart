import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:site_renault_rizzi/interface/4BackOfficePanel.dart';
import 'package:site_renault_rizzi/interface/ActionPlan.dart';
import 'package:site_renault_rizzi/interface/ModelDownload.dart';
import 'package:auto_size_text/auto_size_text.dart';

import 'package:pluto_grid/pluto_grid.dart';

/// Provides a UI to select a authentication type page
class ExecutarAnaliseGar extends StatefulWidget {
  _ExecutarAnaliseGar createState() => _ExecutarAnaliseGar();
}

class LabeledCheckbox extends StatelessWidget {
  const LabeledCheckbox({
    Key? key,
    required this.label,
    required this.padding,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  final String label;
  final EdgeInsets padding;
  final bool value;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChanged(!value);
      },
      child: Padding(
        padding: padding,
        child: Row(
          children: <Widget>[
            Expanded(child: Text(label)),
            Checkbox(
              value: value,
              onChanged: (bool? newValue) {
                onChanged(newValue!);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _ExecutarAnaliseGar extends State<ExecutarAnaliseGar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(border: Border.all(color: Colors.white)),
      child: SingleChildScrollView(
        child: Column(children: [
          Row(children: [
            Expanded(
                child: Container(
              child: SizedBox(
                height: 10,
              ),
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () => Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (_) => Creat_Download())),
                  icon: const Icon(Icons.content_paste),
                  label: const Text('Pesquisar Base'),
                ),
              ],
            ),
            Expanded(
                child: Container(
              child: SizedBox(
                height: 10,
              ),
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () => Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (_) => BackOficcepanel())),
                  icon: const Icon(Icons.assignment_return_outlined),
                  label: const Text('Carregar base'),
                ),
              ],
            ),
            Expanded(
                child: Container(
              child: SizedBox(
                height: 10,
              ),
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () => Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (_) => ExecutarAnaliseGar())),
                  icon: const Icon(Icons.preview),
                  label: const Text('Resumo Final'),
                ),
              ],
            ),
            Expanded(
                child: Container(
              child: SizedBox(
                height: 10,
              ),
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () => Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (_) => ModelFilter())),
                  icon: const Icon(Icons.search),
                  label: const Text('Filtro'),
                ),
              ],
            ),
            Expanded(
                child: Container(
              child: SizedBox(
                height: 10,
              ),
            )),
          ], mainAxisAlignment: MainAxisAlignment.center),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    border: Border.all(
                        color: Colors.black, // Set border color
                        width: 1.0), // Set border width
                    borderRadius: BorderRadius.all(
                        Radius.circular(8.0)), // Set rounded corner radius
                    // Make rounded corner of border
                  ),
                  child: AutoSizeText(
                    'Fechamento Inicial Pré ATA',
                    style: TextStyle(fontSize: 20),
                  ),
                )),
              ],
              crossAxisAlignment: CrossAxisAlignment.center),
          Row(
              children: [
                Expanded(
                    flex: 4,
                    child: Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(10),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.amberAccent,
                        border: Border.all(
                            color: Colors.black, // Set border color
                            width: 1.0), // Set border width
                        borderRadius: BorderRadius.all(
                            Radius.circular(8.0)), // Set rounded corner radius
                        // Make rounded corner of border
                      ),
                      child: AutoSizeText(
                        'Razão Social: xxxxxxxxx',
                        style: TextStyle(fontSize: 11),
                      ),
                    )),
                Expanded(
                    child: Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.amberAccent,
                    border: Border.all(
                        color: Colors.black, // Set border color
                        width: 1.0), // Set border width
                    borderRadius: BorderRadius.all(
                        Radius.circular(8.0)), // Set rounded corner radius
                    // Make rounded corner of border
                  ),
                  child: AutoSizeText(
                    'Bir: XXXX',
                    style: TextStyle(fontSize: 11),
                  ),
                )),
                Expanded(
                    child: Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.amberAccent,
                    border: Border.all(
                        color: Colors.black, // Set border color
                        width: 1.0), // Set border width
                    borderRadius: BorderRadius.all(
                        Radius.circular(8.0)), // Set rounded corner radius
                    // Make rounded corner of border
                  ),
                  child: AutoSizeText(
                    'Auditor: XXXX',
                    style: TextStyle(fontSize: 11),
                  ),
                )),
                Expanded(
                  child: Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(10),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.amberAccent,
                        border: Border.all(
                            color: Colors.black, // Set border color
                            width: 1.0), // Set border width
                        borderRadius: BorderRadius.all(
                            Radius.circular(10.0)), // Set rounded corner radius
                        // Make rounded corner of border
                      ),
                      child: AutoSizeText(
                        'Registro: XXXX/XX',
                        style: TextStyle(fontSize: 11),
                      )),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center),
          Row(
              children: [
                Expanded(
                    child: Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    border: Border.all(
                        color: Colors.black, // Set border color
                        width: 1.0), // Set border width
                    borderRadius: BorderRadius.all(
                        Radius.circular(8.0)), // Set rounded corner radius
                    // Make rounded corner of border
                  ),
                  child: AutoSizeText(
                    'Data inicio: XX/XX/XX',
                    style: TextStyle(fontSize: 11),
                  ),
                )),
                Expanded(
                    child: Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    border: Border.all(
                        color: Colors.black, // Set border color
                        width: 1.0), // Set border width
                    borderRadius: BorderRadius.all(
                        Radius.circular(8.0)), // Set rounded corner radius
                    // Make rounded corner of border
                  ),
                  child: AutoSizeText(
                    'Data final: XX/XX/XX',
                    style: TextStyle(fontSize: 11),
                  ),
                )),
                Expanded(
                    child: Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    border: Border.all(
                        color: Colors.black, // Set border color
                        width: 1.0), // Set border width
                    borderRadius: BorderRadius.all(
                        Radius.circular(8.0)), // Set rounded corner radius
                    // Make rounded corner of border
                  ),
                  child: AutoSizeText(
                    'Hora inicial: XX:XX',
                    style: TextStyle(fontSize: 11),
                  ),
                )),
                Expanded(
                    child: Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    border: Border.all(
                        color: Colors.black, // Set border color
                        width: 1.0), // Set border width
                    borderRadius: BorderRadius.all(
                        Radius.circular(8.0)), // Set rounded corner radius
                    // Make rounded corner of border
                  ),
                  child: AutoSizeText(
                    'Hora final: XX:XX',
                    style: TextStyle(fontSize: 11),
                  ),
                )),
              ],
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    border: Border.all(
                        color: Colors.black, // Set border color
                        width: 1.0), // Set border width
                    borderRadius: BorderRadius.all(
                        Radius.circular(8.0)), // Set rounded corner radius
                    // Make rounded corner of border
                  ),
                  child: AutoSizeText(
                    'Resumo do resultado da auditoria dos processos de garantia ',
                    style: TextStyle(fontSize: 14),
                  ),
                )),
              ],
              crossAxisAlignment: CrossAxisAlignment.center),
          Row(children: [
            Expanded(
                child: Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(5),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.black12,
                border: Border.all(
                    color: Colors.white70, // Set border color
                    width: 3.0), // Set border width
                // Set rounded corner radius
                // Make rounded corner of border
              ),
              child: AutoSizeText(
                'Descritivo',
                style: TextStyle(fontSize: 11),
              ),
            )),
            Expanded(
                child: Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(5),
              alignment: Alignment.center,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.black12,
                border: Border.all(
                    color: Colors.white70, // Set border color
                    width: 3.0), // Set border width
                // Set rounded corner radius
                // Make rounded corner of border
              ),
              child: AutoSizeText(
                'Valores',
                style: TextStyle(fontSize: 11),
              ),
            )),
            Expanded(
                child: Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(5),
              width: 300,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.black12,
                border: Border.all(
                    color: Colors.white70, // Set border color
                    width: 3.0), // Set border width
                // Set rounded corner radius
                // Make rounded corner of border
              ),
              child: AutoSizeText(
                'Quantidade',
                style: TextStyle(fontSize: 11),
              ),
            )),
          ], mainAxisAlignment: MainAxisAlignment.center),
          Row(children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 30,
                width: 80,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black12)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: AutoSizeText(
                  'Total Analisado:',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 30,
                width: 80,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black12)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: AutoSizeText(
                  '250.502.52',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 30,
                width: 80,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black12)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: AutoSizeText(
                  '150',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
          ], mainAxisAlignment: MainAxisAlignment.center),
          Row(children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 30,
                width: 80,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black12)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: AutoSizeText(
                  'Grau 1 primeiro dia:',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 30,
                width: 80,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black12)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: AutoSizeText(
                  '1585,45',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 30,
                width: 80,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black12)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: AutoSizeText(
                  '52',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
          ], mainAxisAlignment: MainAxisAlignment.center),
          Row(children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 30,
                width: 80,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black12)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: AutoSizeText(
                  'Grau 2 primeiro dia:',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 30,
                width: 80,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black12)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: AutoSizeText(
                  '4585,45',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 30,
                width: 80,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black12)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: AutoSizeText(
                  '12',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
          ], mainAxisAlignment: MainAxisAlignment.center),
          Row(children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 30,
                width: 80,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black12)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: AutoSizeText(
                  'Grau 3 primeiro dia:',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 30,
                width: 80,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black12)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: AutoSizeText(
                  '585,45',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 30,
                width: 80,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black12)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: AutoSizeText(
                  '2',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
          ], mainAxisAlignment: MainAxisAlignment.center),
          Row(children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 30,
                width: 80,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black12)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: AutoSizeText(
                  'Resultado Primeiro dia:',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 30,
                width: 80,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black12)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: AutoSizeText(
                  '2.629,35',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 30,
                width: 80,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black12)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: AutoSizeText(
                  '66',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
          ], mainAxisAlignment: MainAxisAlignment.center),
          Row(children: [
            Expanded(
                child: Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(5),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.black12,
                border: Border.all(
                    color: Colors.white70, // Set border color
                    width: 3.0), // Set border width
                // Set rounded corner radius
                // Make rounded corner of border
              ),
              child: AutoSizeText(
                'Mês',
                style: TextStyle(fontSize: 11),
              ),
            )),
            Expanded(
                child: Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(5),
              alignment: Alignment.center,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.black12,
                border: Border.all(
                    color: Colors.white70, // Set border color
                    width: 3.0), // Set border width
                // Set rounded corner radius
                // Make rounded corner of border
              ),
              child: AutoSizeText(
                'O.S',
                style: TextStyle(fontSize: 11),
              ),
            )),
            Expanded(
                child: Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(5),
              width: 300,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.black12,
                border: Border.all(
                    color: Colors.white70, // Set border color
                    width: 3.0), // Set border width
                // Set rounded corner radius
                // Make rounded corner of border
              ),
              child: AutoSizeText(
                'Fatura',
                style: TextStyle(fontSize: 11),
              ),
            )),
            Expanded(
                child: Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(5),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.black12,
                border: Border.all(
                    color: Colors.white70, // Set border color
                    width: 3.0), // Set border width
                // Set rounded corner radius
                // Make rounded corner of border
              ),
              child: AutoSizeText(
                'Inter',
                style: TextStyle(fontSize: 11),
              ),
            )),
            Expanded(
                child: Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(5),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      border: Border.all(
                          color: Colors.white70, // Set border color
                          width: 3.0), // Set border width
                      // Set rounded corner radius
                      // Make rounded corner of border
                    ),
                    child: AutoSizeText(
                      'VIN',
                      style: TextStyle(fontSize: 11),
                    ))),
            Expanded(
                child: Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(5),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      border: Border.all(
                          color: Colors.white70, // Set border color
                          width: 3.0), // Set border width
                      // Set rounded corner radius
                      // Make rounded corner of border
                    ),
                    child: AutoSizeText(
                      'NAT',
                      style: TextStyle(fontSize: 11),
                    ))),
            Expanded(
                child: Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(5),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      border: Border.all(
                          color: Colors.white70, // Set border color
                          width: 3.0), // Set border width
                      // Set rounded corner radius
                      // Make rounded corner of border
                    ),
                    child: AutoSizeText(
                      'Valor',
                      style: TextStyle(fontSize: 11),
                    ))),
            Expanded(
                child: Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(5),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      border: Border.all(
                          color: Colors.white70, // Set border color
                          width: 3.0), // Set border width
                      // Set rounded corner radius
                      // Make rounded corner of border
                    ),
                    child: AutoSizeText(
                      'NITG',
                      style: TextStyle(fontSize: 11),
                    ))),
            Expanded(
                child: Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(5),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      border: Border.all(
                          color: Colors.white70, // Set border color
                          width: 3.0), // Set border width
                      // Set rounded corner radius
                      // Make rounded corner of border
                    ),
                    child: AutoSizeText(
                      'Aponte',
                      style: TextStyle(fontSize: 11),
                    ))),
            Expanded(
                child: Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(5),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      border: Border.all(
                          color: Colors.green, // Set border color
                          width: 3.0), // Set border width
                      // Set rounded corner radius
                      // Make rounded corner of border
                    ),
                    child: AutoSizeText(
                      'M/O',
                      style: TextStyle(fontSize: 11),
                    ))),
            Expanded(
                child: Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(5),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      border: Border.all(
                          color: Colors.green, // Set border color
                          width: 3.0), // Set border width
                      // Set rounded corner radius
                      // Make rounded corner of border
                    ),
                    child: AutoSizeText(
                      'PÇ',
                      style: TextStyle(fontSize: 11),
                    ))),
            Expanded(
                child: Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(5),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      border: Border.all(
                          color: Colors.green, // Set border color
                          width: 3.0), // Set border width
                      // Set rounded corner radius
                      // Make rounded corner of border
                    ),
                    child: AutoSizeText(
                      'Item',
                      style: TextStyle(fontSize: 11),
                    ))),
            Expanded(
                child: Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(5),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      border: Border.all(
                          color: Colors.white70, // Set border color
                          width: 3.0), // Set border width
                      // Set rounded corner radius
                      // Make rounded corner of border
                    ),
                    child: AutoSizeText(
                      'Grau',
                      style: TextStyle(fontSize: 11),
                    ))),
            Expanded(
                child: Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(5),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      border: Border.all(
                          color: Colors.green, // Set border color
                          width: 3.0), // Set border width
                      // Set rounded corner radius
                      // Make rounded corner of border
                    ),
                    child: AutoSizeText(
                      'Comentário',
                      style: TextStyle(fontSize: 11),
                    ))),
          ], mainAxisAlignment: MainAxisAlignment.center),
          Row(children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 30,
                width: 80,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black12)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: AutoSizeText(
                  '202111',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 30,
                width: 80,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black12)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: AutoSizeText(
                  '291005',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 30,
                width: 80,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black12)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: AutoSizeText(
                  '25134',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 30,
                width: 80,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black12)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: AutoSizeText(
                  'A',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 30,
                width: 80,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black12)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: AutoSizeText(
                  '93YRBB008KJ890399',
                  style: TextStyle(fontSize: 9),
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 30,
                width: 80,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black12)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: AutoSizeText(
                  'G36',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 30,
                width: 80,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black12)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: AutoSizeText(
                  '2535,12',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 30,
                width: 80,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black12)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: AutoSizeText(
                  'A221',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 30,
                width: 80,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black12)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: AutoSizeText(
                  'Escrape Em curso',
                  style: TextStyle(fontSize: 9),
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 30,
                width: 80,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.green)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: AutoSizeText(
                  'XXX?',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 30,
                width: 80,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.green)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: AutoSizeText(
                  'XPTO?',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 30,
                width: 80,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.green)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: AutoSizeText(
                  '23',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 30,
                width: 80,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black12)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: AutoSizeText(
                  '1',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.green)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: SizedBox(
                  height: 30,
                  width: 80,
                  child: AutoSizeText(
                    'Descritivo de apontamento',
                    style: TextStyle(fontSize: 10.0),
                    maxLines: 5,
                  ),
                ),
              ),
            ),
          ], mainAxisAlignment: MainAxisAlignment.center),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    border: Border.all(
                        color: Colors.black, // Set border color
                        width: 1.0), // Set border width
                    borderRadius: BorderRadius.all(
                        Radius.circular(8.0)), // Set rounded corner radius
                    // Make rounded corner of border
                  ),
                  child: AutoSizeText(
                    'Participantes ',
                    style: TextStyle(fontSize: 14),
                  ),
                )),
              ],
              crossAxisAlignment: CrossAxisAlignment.center),
          Row(children: [
            Expanded(
                child: Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(5),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.black12,
                border: Border.all(
                    color: Colors.white70, // Set border color
                    width: 3.0), // Set border width
                // Set rounded corner radius
                // Make rounded corner of border
              ),
              child: AutoSizeText(
                'Nome',
                style: TextStyle(fontSize: 11),
              ),
            )),
            Expanded(
                child: Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(5),
              alignment: Alignment.center,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.black12,
                border: Border.all(
                    color: Colors.white70, // Set border color
                    width: 3.0), // Set border width
                // Set rounded corner radius
                // Make rounded corner of border
              ),
              child: AutoSizeText(
                'Cargo/Função',
                style: TextStyle(fontSize: 11),
              ),
            )),
            Expanded(
                child: Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(5),
              width: 300,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.black12,
                border: Border.all(
                    color: Colors.white70, // Set border color
                    width: 3.0), // Set border width
                // Set rounded corner radius
                // Make rounded corner of border
              ),
              child: AutoSizeText(
                'Email',
                style: TextStyle(fontSize: 11),
              ),
            )),
            Expanded(
                child: Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(5),
              width: 300,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.black12,
                border: Border.all(
                    color: Colors.white70, // Set border color
                    width: 3.0), // Set border width
                // Set rounded corner radius
                // Make rounded corner of border
              ),
              child: AutoSizeText(
                'Assinatura',
                style: TextStyle(fontSize: 11),
              ),
            )),
          ], mainAxisAlignment: MainAxisAlignment.center),
          Row(children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 30,
                width: 80,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black12)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: AutoSizeText(
                  'Jão Melão',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 30,
                width: 80,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black12)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: AutoSizeText(
                  'Gerente de Pós Vendas',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 30,
                width: 80,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black12)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: AutoSizeText(
                  'gerente@test.com,br',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 30,
                width: 80,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black12)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: AutoSizeText(
                  'xxxxxxxxxx',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
          ], mainAxisAlignment: MainAxisAlignment.center),
          Row(children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 60,
                width: 80,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.deepOrange)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: AutoSizeText(
                  'Cobranças em duplicidade e/ou a mais que o preconizado ( Dialogys, NF terceiro e etc):',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 60,
                width: 80,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.deepOrange)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: AutoSizeText(
                  'Valor =00000',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 60,
                width: 80,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.deepOrange)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: AutoSizeText(
                  'Total de Apontamentos  à serem estornados ',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 60,
                width: 80,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.deepOrange)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: AutoSizeText(
                  'Valores 52.000,54 ',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 60,
                width: 80,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.deepOrange)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: AutoSizeText(
                  '25% ',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
          ], mainAxisAlignment: MainAxisAlignment.center),
        ], mainAxisAlignment: MainAxisAlignment.center),
      ),
    ));
  }
}

void main() {
  runApp(const ModelFilter());
}

class ModelFilter extends StatelessWidget {
  const ModelFilter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Filtro Base',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PlutoGridExamplePage(),
    );
  }
}

/// PlutoGrid Example
//
/// For more examples, go to the demo web link on the github below.
class PlutoGridExamplePage extends StatefulWidget {
  const PlutoGridExamplePage({Key? key}) : super(key: key);

  @override
  State<PlutoGridExamplePage> createState() => _PlutoGridExamplePageState();
}

class _PlutoGridExamplePageState extends State<PlutoGridExamplePage> {
  final List<PlutoColumn> columns = <PlutoColumn>[
    PlutoColumn(
      title: 'Aponte',
      field: 'aponte',
      type: PlutoColumnType.text(),
      titleTextAlign: PlutoColumnTextAlign.center,
      backgroundColor: Colors.amber,
    ),
    PlutoColumn(
      title: 'OS',
      field: 'OS',
      type: PlutoColumnType.text(),
      titleTextAlign: PlutoColumnTextAlign.center,
      backgroundColor: Colors.amber,
    ),
    PlutoColumn(
      title: 'Fatura',
      field: 'fatura',
      type: PlutoColumnType.text(),
      titleTextAlign: PlutoColumnTextAlign.center,
      backgroundColor: Colors.amber,
    ),
    PlutoColumn(
      title: 'NITG',
      field: 'nitg',
      type: PlutoColumnType.text(),
      titleTextAlign: PlutoColumnTextAlign.center,
      backgroundColor: Colors.amber,
    ),
    PlutoColumn(
      title: 'VIN',
      field: 'VIN',
      type: PlutoColumnType.text(),
      titleTextAlign: PlutoColumnTextAlign.center,
      backgroundColor: Colors.amber,
    ),
    PlutoColumn(
      title: 'Nat',
      field: 'Nat',
      type: PlutoColumnType.text(),
      titleTextAlign: PlutoColumnTextAlign.center,
      backgroundColor: Colors.amber,
    ),
    PlutoColumn(
      title: 'Valor',
      field: 'Valor',
      type: PlutoColumnType.text(),
      titleTextAlign: PlutoColumnTextAlign.center,
      backgroundColor: Colors.amber,
    ),
  ];

  final List<PlutoRow> rows = [
    PlutoRow(
      cells: {
        'aponte': PlutoCell(value: 'escrape em curso'),
        'fatura': PlutoCell(value: '25642'),
        'OS': PlutoCell(value: '5486'),
        'nitg': PlutoCell(value: 'A221'),
        'VIN': PlutoCell(value: '93YRBB001LJ082736'),
        'Nat': PlutoCell(value: 'G36'),
        'Valor': PlutoCell(value: '1254,00')
      },
    ),
  ];

  /// columnGroups that can group columns can be omitted.
  final List<PlutoColumnGroup> columnGroups = [];

  /// [PlutoGridStateManager] has many methods and properties to dynamically manipulate the grid.
  /// You can manipulate the grid dynamically at runtime by passing this through the [onLoaded] callback.
  late final PlutoGridStateManager stateManager;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: PlutoGrid(
          columns: columns,
          rows: rows,
          columnGroups: columnGroups,
          onLoaded: (PlutoGridOnLoadedEvent event) {
            stateManager = event.stateManager;
          },
          onChanged: (PlutoGridOnChangedEvent event) {
            print(event);
          },
          configuration: const PlutoGridConfiguration(
            enableColumnBorder: true,
            enterKeyAction: PlutoGridEnterKeyAction.editingAndMoveDown,
          ),
        ),
      ),
    );
  }
}

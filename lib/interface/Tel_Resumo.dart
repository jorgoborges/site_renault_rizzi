import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:site_renault_rizzi/interface/Tel_ChartAjuda.dart';
import 'package:site_renault_rizzi/interface/Tel_Chart_3.dart';
import 'package:site_renault_rizzi/interface/Tel_Ata.dart';
import 'package:site_renault_rizzi/interface/Tel_Menu.dart';

/// Provides a UI to select a authentication type page
class Tel_Resumo extends StatefulWidget {
  _Tel_Resumo createState() => _Tel_Resumo();
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

class _Tel_Resumo extends State<Tel_Resumo> {
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
              children: [],
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
                      MaterialPageRoute(builder: (_) => Tel_ChartAjuda())),
                  icon: const Icon(Icons.add_chart),
                  label: const Text('Andamento'),
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
                      MaterialPageRoute(builder: (_) => Tel_Ata())),
                  icon: const Icon(Icons.preview),
                  label: const Text('Pré Ata'),
                ),
              ],
            ),
            Expanded(
                child: Container(
              child: SizedBox(
                height: 10,
              ),
            )),
            ElevatedButton.icon(
              onPressed: () => Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (_) => Tel_Chart_3())),
              icon: const Icon(Icons.dashboard),
              label: const Text('Dashboard'),
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
                      MaterialPageRoute(builder: (_) => Tel_Resumo())),
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
                      MaterialPageRoute(builder: (_) => Tel_Menu())),
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
                  padding: EdgeInsets.all(5),
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
                    'Resumo Final',
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
                      padding: EdgeInsets.all(5),
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
                  padding: EdgeInsets.all(5),
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
                  padding: EdgeInsets.all(5),
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
                      padding: EdgeInsets.all(5),
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
                  padding: EdgeInsets.all(5),
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
                  padding: EdgeInsets.all(5),
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
                  padding: EdgeInsets.all(5),
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
                  padding: EdgeInsets.all(5),
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
                  padding: EdgeInsets.all(5),
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
          Row(
              children: [
                Expanded(
                    flex: 3,
                    child: Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.lightBlueAccent,
                        border: Border.all(
                            color: Colors.black, // Set border color
                            width: 1.0), // Set border width
                        borderRadius: BorderRadius.all(
                            Radius.circular(8.0)), // Set rounded corner radius
                        // Make rounded corner of border
                      ),
                      child: AutoSizeText(
                        'Apontamento primeiro dia ',
                        style: TextStyle(fontSize: 11),
                      ),
                    )),
                Expanded(
                    flex: 3,
                    child: Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.yellowAccent,
                        border: Border.all(
                            color: Colors.black, // Set border color
                            width: 1.0), // Set border width
                        borderRadius: BorderRadius.all(
                            Radius.circular(8.0)), // Set rounded corner radius
                        // Make rounded corner of border
                      ),
                      child: AutoSizeText(
                        'Apontamento segundo dia ',
                        style: TextStyle(fontSize: 11),
                      ),
                    )),
                Expanded(
                    flex: 2,
                    child: Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.deepOrangeAccent,
                        border: Border.all(
                            color: Colors.black, // Set border color
                            width: 1.0), // Set border width
                        borderRadius: BorderRadius.all(
                            Radius.circular(8.0)), // Set rounded corner radius
                        // Make rounded corner of border
                      ),
                      child: AutoSizeText(
                        'Resultado ',
                        style: TextStyle(fontSize: 11),
                      ),
                    )),
              ],
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center),
          Row(children: [
            Expanded(
                child: Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(5),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                border: Border.all(
                    color: Colors.white70, // Set border color
                    width: 3.0), // Set border width
                // Set rounded corner radius
                // Make rounded corner of border
              ),
              child: AutoSizeText(
                'Descritivo Inicial',
                style: TextStyle(fontSize: 11),
              ),
            )),
            Expanded(
                child: Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(5),
              alignment: Alignment.center,
              width: 70,
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                border: Border.all(
                    color: Colors.white70, // Set border color
                    width: 3.0), // Set border width
                // Set rounded corner radius
                // Make rounded corner of border
              ),
              child: AutoSizeText(
                'Valores 1',
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
                color: Colors.lightBlueAccent,
                border: Border.all(
                    color: Colors.white70, // Set border color
                    width: 3.0), // Set border width
                // Set rounded corner radius
                // Make rounded corner of border
              ),
              child: AutoSizeText(
                'Qtd OS(s) apontadas',
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
                color: Colors.yellowAccent,
                border: Border.all(
                    color: Colors.white70, // Set border color
                    width: 3.0), // Set border width
                // Set rounded corner radius
                // Make rounded corner of border
              ),
              child: AutoSizeText(
                'Descritivo Final',
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
                color: Colors.yellowAccent,
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
                color: Colors.yellowAccent,
                border: Border.all(
                    color: Colors.white70, // Set border color
                    width: 3.0), // Set border width
                // Set rounded corner radius
                // Make rounded corner of border
              ),
              child: AutoSizeText(
                'Qtd OS(s) apontadas',
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
                color: Colors.deepOrangeAccent,
                border: Border.all(
                    color: Colors.white70, // Set border color
                    width: 3.0), // Set border width
                // Set rounded corner radius
                // Make rounded corner of border
              ),
              child: AutoSizeText(
                'Montante Geral Apont',
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
                color: Colors.deepOrangeAccent,
                border: Border.all(
                    color: Colors.white70, // Set border color
                    width: 3.0), // Set border width
                // Set rounded corner radius
                // Make rounded corner of border
              ),
              child: AutoSizeText(
                'Qtd OS(s) apontadas',
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
                  '250.500,00',
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
                  '80',
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
                  'Total Analisado Final',
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
                  '35.785,23',
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
                  '50',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 30,
                width: 80,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.deepOrangeAccent)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: AutoSizeText(
                  '286.287,75',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 30,
                width: 80,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.deepOrangeAccent)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: AutoSizeText(
                  '130',
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
                  '2780,35',
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
                  'Grau 1 segundo dia:',
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
                  '5785,35',
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
                  '37',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 30,
                width: 80,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.deepOrangeAccent)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: AutoSizeText(
                  '9854,45',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 30,
                width: 80,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.deepOrangeAccent)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: AutoSizeText(
                  '151',
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
                  'Grau 2 segundo dia:',
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
                  '333',
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
                  '999',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 30,
                width: 80,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.deepOrangeAccent)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: AutoSizeText(
                  '777',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 30,
                width: 80,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.deepOrangeAccent)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: AutoSizeText(
                  '1266',
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
                  'Grau 3 segundo dia:',
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
                  '1236',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 30,
                width: 80,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.deepOrangeAccent)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: AutoSizeText(
                  '857',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 30,
                width: 80,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.deepOrangeAccent)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: AutoSizeText(
                  '12356',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
          ], mainAxisAlignment: MainAxisAlignment.center),
          Row(children: [], mainAxisAlignment: MainAxisAlignment.center),
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
                    'Inter.',
                    style: TextStyle(fontSize: 9),
                  ),
                )),
            Expanded(
                flex: 2,
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
                      'Valor',
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
                      style: TextStyle(fontSize:9),
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
                      style: TextStyle(fontSize: 9),
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
                      'Irregularidade',
                      style: TextStyle(fontSize: 9),
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
                    'Dia',
                    style: TextStyle(fontSize: 11),
                  ),
                )),
          ], mainAxisAlignment: MainAxisAlignment.center),
          Row(children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 80,
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
                height: 80,
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
                height:80,
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
                height: 80,
                width: 80,
                decoration:
                BoxDecoration(border: Border.all(color: Colors.black12)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: AutoSizeText(
                  'A.',
                  style: TextStyle(fontSize: 9),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.center,
                height: 80,
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
                height: 80,
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
                height: 80,
                width: 80,
                decoration:
                BoxDecoration(border: Border.all(color: Colors.green)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: AutoSizeText(
                  'XXX?',
                  style: TextStyle(fontSize: 9),
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 80,
                width: 80,
                decoration:
                BoxDecoration(border: Border.all(color: Colors.green)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: AutoSizeText(
                  'XPTO?',
                  style: TextStyle(fontSize: 9),
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 80,
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
                height: 80,
                width: 80,
                decoration:
                BoxDecoration(border: Border.all(color: Colors.black12)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: AutoSizeText(
                  '1.',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 80,
                width: 80,
                decoration:
                BoxDecoration(border: Border.all(color: Colors.green)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: AutoSizeText(
                  '1- descritivo de apontamento',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 80,
                width: 80,
                decoration:
                BoxDecoration(border: Border.all(color: Colors.black12)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: AutoSizeText(
                  '1- descritivo de irregularidade',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 80,
                width: 80,
                decoration:
                BoxDecoration(border: Border.all(color: Colors.green)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: AutoSizeText(
                  '10.',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
          ], mainAxisAlignment: MainAxisAlignment.center),
          Row(children: [
            Expanded(
              flex: 7,
              child: Container(
                alignment: Alignment.center,
                height: 45,
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
                height: 25,
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
              flex: 7,
              child: Container(
                alignment: Alignment.center,
                height: 45,
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
                height: 25,
                width: 80,
                decoration:
                BoxDecoration(border: Border.all(color: Colors.deepOrange)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: AutoSizeText(
                  '52.000,54 ',
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 40,
                width: 80,
                decoration:
                BoxDecoration(border: Border.all(color: Colors.deepOrange)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(5),
                child: AutoSizeText(
                  '40% ',
                  style: TextStyle(fontSize: 10),
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
                      padding: EdgeInsets.all(5),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        border: Border.all(
                            color: Colors.black, // Set border color
                            width: 1.0), // Set border width
                        borderRadius: BorderRadius.all(
                            Radius.circular(1)), // Set rounded corner radius
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
                  width: 40,
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
        ], mainAxisAlignment: MainAxisAlignment.center),
      ),
        ));
  }
}

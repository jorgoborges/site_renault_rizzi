import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:site_renault_rizzi/interface/4BackOfficePanel.dart';
import 'package:site_renault_rizzi/interface/ActionPlan.dart';
import 'package:site_renault_rizzi/interface/ModelDownload.dart';
import 'package:site_renault_rizzi/interface/FechamentoAnaliseGar.dart';

/// Provides a UI to select a authentication type page
class CarregarBaseGar extends StatefulWidget {
  _CarregarBaseGar createState() => _CarregarBaseGar();
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

class _CarregarBaseGar extends State<CarregarBaseGar> {
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () => Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (_) => ActionPlan())),
                  icon: const Icon(Icons.assignment_return_outlined),
                  label: const Text('Voltar'),
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
                    'Carregar Base Garantia',
                    style: TextStyle(fontSize: 20),
                  ),
                )),
              ],
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
                    'Nome aquivo:',
                    style: TextStyle(fontSize: 14),
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
                            Radius.circular(10.0)), // Set rounded corner radius
                        // Make rounded corner of border
                      ),
                      child: AutoSizeText(
                        'N.º Registro:',
                        style: TextStyle(fontSize: 14),
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
                    'Autor:',
                    style: TextStyle(fontSize: 14),
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
                            Radius.circular(10.0)), // Set rounded corner radius
                        // Make rounded corner of border
                      ),
                      child: AutoSizeText(
                        'Auditor/Analista:',
                        style: TextStyle(fontSize: 14),
                      )),
                ),
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
          ], mainAxisAlignment: MainAxisAlignment.center),
        ], mainAxisAlignment: MainAxisAlignment.center),
      ),
    ));
  }
}

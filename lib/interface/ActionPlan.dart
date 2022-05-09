import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:roundcheckbox/roundcheckbox.dart';
import 'package:site_renault_rizzi/interface/MenuList.dart';
import 'package:site_renault_rizzi/interface/action_plan2.dart';
import 'package:site_renault_rizzi/interface/5AuditorPanel.dart';

/// Provides a UI to select a authentication type page
class ActionPlan extends StatefulWidget {
  _ActionPlan createState() => _ActionPlan();
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

class _ActionPlan extends State<ActionPlan> {
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
                      MaterialPageRoute(builder: (_) => ActionPlan2())),
                  icon: const Icon(Icons.group_work),
                  label: const Text('MENU1'),
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
                      MaterialPageRoute(builder: (_) => MyHome())),
                  icon: const Icon(Icons.group_work),
                  label: const Text('MENU2'),
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
                      MaterialPageRoute(builder: (_) => AuditorPanel())),
                  icon: const Icon(Icons.group_work),
                  label: const Text('MENU3'),
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
                      MaterialPageRoute(builder: (_) => MyHome())),
                  icon: const Icon(Icons.group_work),
                  label: const Text('MENU4'),
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
                    color: Colors.amber,
                    border: Border.all(
                        color: Colors.black, // Set border color
                        width: 1.0), // Set border width
                    borderRadius: BorderRadius.all(
                        Radius.circular(8.0)), // Set rounded corner radius
                    // Make rounded corner of border
                  ),
                  child: AutoSizeText(
                    'PLANO DE AÇÃO',
                    style: TextStyle(fontSize: 20),
                    maxLines: 2,
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
                    color: Colors.grey,
                    border: Border.all(
                        color: Colors.black, // Set border color
                        width: 1.0), // Set border width
                    borderRadius: BorderRadius.all(
                        Radius.circular(8.0)), // Set rounded corner radius
                    // Make rounded corner of border
                  ),
                  child: AutoSizeText(
                    'ASSUNTO:',
                    style: TextStyle(fontSize: 12),
                    maxLines: 1,
                  ),
                )),
                Expanded(
                  child: Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(10),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        border: Border.all(
                            color: Colors.black, // Set border color
                            width: 1.0), // Set border width
                        borderRadius: BorderRadius.all(
                            Radius.circular(10.0)), // Set rounded corner radius
                        // Make rounded corner of border
                      ),
                      child: AutoSizeText(
                        'N.º:',
                        style: TextStyle(fontSize: 12),
                        maxLines: 1,
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
                    color: Colors.grey,
                    border: Border.all(
                        color: Colors.black, // Set border color
                        width: 1.0), // Set border width
                    borderRadius: BorderRadius.all(
                        Radius.circular(8.0)), // Set rounded corner radius
                    // Make rounded corner of border
                  ),
                  child: AutoSizeText(
                    'OBJETIVO:',
                    style: TextStyle(fontSize: 12),
                    maxLines: 1,
                  ),
                )),
                Expanded(
                  child: Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(10),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        border: Border.all(
                            color: Colors.black, // Set border color
                            width: 1.0), // Set border width
                        borderRadius: BorderRadius.all(
                            Radius.circular(10.0)), // Set rounded corner radius
                        // Make rounded corner of border
                      ),
                      child: AutoSizeText(
                        'RESPONSÁVEL:',
                        style: TextStyle(fontSize: 12),
                        maxLines: 1,
                      )),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center),
          Row(children: [
            Expanded(
                child: Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.grey,
                border: Border.all(
                    color: Colors.white70, // Set border color
                    width: 3.0), // Set border width
                // Set rounded corner radius
                // Make rounded corner of border
              ),
              child: AutoSizeText(
                'ITEM',
                style: TextStyle(fontSize: 8),
                maxLines: 2,
              ),
            )),
            Expanded(
                child: Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              width: 150,
              decoration: BoxDecoration(
                color: Colors.grey,
                border: Border.all(
                    color: Colors.white70, // Set border color
                    width: 3.0), // Set border width
                // Set rounded corner radius
                // Make rounded corner of border
              ),
              child: AutoSizeText(
                'ATIVIDADE',
                style: TextStyle(fontSize: 8),
                maxLines: 2,
              ),
            )),
            Expanded(
                flex: 2,
                child: Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(10),
                  width: 300,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    border: Border.all(
                        color: Colors.white70, // Set border color
                        width: 3.0), // Set border width
                    // Set rounded corner radius
                    // Make rounded corner of border
                  ),
                  child: AutoSizeText(
                    'RECURSO NECESSÁRIO',
                    style: TextStyle(fontSize: 8),
                    maxLines: 2,
                  ),
                )),
            Expanded(
                child: Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.grey,
                border: Border.all(
                    color: Colors.white70, // Set border color
                    width: 3.0), // Set border width
                // Set rounded corner radius
                // Make rounded corner of border
              ),
              child: AutoSizeText(
                'RESPONSÁVEL',
                style: TextStyle(fontSize: 8),
                maxLines: 2,
              ),
            )),
            Expanded(
                child: Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      border: Border.all(
                          color: Colors.white70, // Set border color
                          width: 3.0), // Set border width
                      // Set rounded corner radius
                      // Make rounded corner of border
                    ),
                    child: AutoSizeText(
                      'DATA INICIO',
                      style: TextStyle(fontSize: 8),
                      maxLines: 2,
                    ))),
            Expanded(
                child: Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      border: Border.all(
                          color: Colors.white70, // Set border color
                          width: 3.0), // Set border width
                      // Set rounded corner radius
                      // Make rounded corner of border
                    ),
                    child: AutoSizeText(
                      'DATA TÉRMINO',
                      style: TextStyle(fontSize: 8),
                      maxLines: 2,
                    ))),
            Expanded(
                flex: 4,
                child: Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      border: Border.all(
                          color: Colors.white70, // Set border color
                          width: 3.0), // Set border width
                      // Set rounded corner radius
                      // Make rounded corner of border
                    ),
                    child: AutoSizeText(
                      'OBS',
                      style: TextStyle(fontSize: 8),
                      maxLines: 2,
                    ))),
            Expanded(
                child: Container(
              margin: EdgeInsets.all(5),
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.grey,
                border: Border.all(
                    color: Colors.white70, // Set border color
                    width: 3.0), // Set border width
                // Set rounded corner radius
                // Make rounded corner of border
              ),
              child: AutoSizeText('STATUS',
                  style: TextStyle(fontSize: 8), maxLines: 2),
            )),
          ], mainAxisAlignment: MainAxisAlignment.center),
          Row(children: [
            // a primeira questão começa aqui!!
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 150,
                width: 100,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(10),
                child: AutoSizeText(
                  'Texto Item',
                  style: TextStyle(fontSize: 8),
                  maxLines: 5,
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 150,
                width: 40,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(10),
                child: AutoSizeText(
                  'Texto Atividade',
                  style: TextStyle(fontSize: 8),
                  maxLines: 5,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.center,
                height: 150,
                width: 300,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(10),
                child: AutoSizeText(
                  'texto Recurso',
                  style: TextStyle(fontSize: 8),
                  maxLines: 5,
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 150,
                width: 300,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(10),
                child: AutoSizeText(
                  'Texto Responsável',
                  style: TextStyle(fontSize: 8),
                  maxLines: 5,
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 150,
                width: 300,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(10),
                child: AutoSizeText(
                  'Data inicio',
                  style: TextStyle(fontSize: 8),
                  maxLines: 5,
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 150,
                width: 300,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(10),
                child: AutoSizeText(
                  'Data Termino',
                  style: TextStyle(fontSize: 8),
                  maxLines: 5,
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                alignment: Alignment.center,
                height: 150,
                width: 300,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(10),
                child: AutoSizeText(
                  'Texto OBS',
                  style: TextStyle(fontSize: 8),
                  maxLines: 5,
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey)),
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    RoundCheckBox(
                      onTap: (selected) {},
                      border: Border.all(
                        width: 4,
                        color: Colors.white,
                      ),
                      uncheckedColor: Colors.red,
                      uncheckedWidget: Icon(Icons.close, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ], mainAxisAlignment: MainAxisAlignment.center),
        ], mainAxisAlignment: MainAxisAlignment.center),
      ),
    ));
  }
}

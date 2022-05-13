import 'package:flutter/material.dart';
import 'package:pluto_grid/pluto_grid.dart';

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
      title: 'N.ºOS',
      field: 'N.ºOS',
      type: PlutoColumnType.text(),
      titleTextAlign: PlutoColumnTextAlign.center,
      backgroundColor: Colors.amber,
    ),
    PlutoColumn(
      title: 'N.ºFatura',
      field: 'n.ºfatura',
      type: PlutoColumnType.text(),
      titleTextAlign: PlutoColumnTextAlign.center,
      backgroundColor: Colors.amber,
    ),
    PlutoColumn(
      title: 'Inter.',
      field: 'Inter.',
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
      title: 'Nat.',
      field: 'Nat.',
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
        'aponte': PlutoCell(value: '202111'),
        'n.ºfatura': PlutoCell(value: '25642'),
        'N.ºOS': PlutoCell(value: '5486'),
        'Inter.': PlutoCell(value: 'A'),
        'VIN': PlutoCell(value: '93YRBB001LJ082736'),
        'Nat.': PlutoCell(value: 'G36'),
        'Valor': PlutoCell(value: '254,00')
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
        child: SingleChildScrollView(
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
      ),
    );
  }
}

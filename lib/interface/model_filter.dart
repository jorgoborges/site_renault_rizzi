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
      title: 'Definir',
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
      title: 'Id',
      field: 'id',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'Autor',
      field: 'nome',
      type: PlutoColumnType.text(),
    ),
    PlutoColumn(
      title: 'BIR',
      field: 'bir',
      type: PlutoColumnType.number(),
    ),
    PlutoColumn(
      title: 'Nivel',
      field: 'Nivel',
      type: PlutoColumnType.select(<String>[
        'Vendas',
        'Pós Vendas',
        'Master',
      ]),
    ),
    PlutoColumn(
      title: 'Data',
      field: 'Data',
      type: PlutoColumnType.date(),
    ),
    PlutoColumn(
      title: 'Hora',
      field: 'Hora',
      type: PlutoColumnType.time(),
    ),
  ];

  final List<PlutoRow> rows = [
    PlutoRow(
      cells: {
        'id': PlutoCell(value: 'user1'),
        'bir': PlutoCell(value: '795'),
        'nome': PlutoCell(value: 'Altair'),
        'Nivel': PlutoCell(value: 'Master'),
        'Data': PlutoCell(value: '2021-01-01'),
        'Hora': PlutoCell(value: '09:00'),
      },
    ),
    PlutoRow(
      cells: {
        'id': PlutoCell(value: 'user2'),
        'nome': PlutoCell(value: 'Victor'),
        'bir': PlutoCell(value: '897'),
        'Nivel': PlutoCell(value: 'Vendas'),
        'Data': PlutoCell(value: '2021-02-01'),
        'Hora': PlutoCell(value: '10:00'),
      },
    ),
    PlutoRow(
      cells: {
        'id': PlutoCell(value: 'user3'),
        'nome': PlutoCell(value: 'Jorge'),
        'bir': PlutoCell(value: '687'),
        'Nivel': PlutoCell(value: 'Pós Vendas'),
        'Data': PlutoCell(value: '2021-03-01'),
        'Hora': PlutoCell(value: '11:00'),
      },
    ),
  ];

  /// columnGroups that can group columns can be omitted.
  final List<PlutoColumnGroup> columnGroups = [
    PlutoColumnGroup(title: 'BackOffice', fields: ['Autor', 'nome']),
    PlutoColumnGroup(title: 'Id', fields: ['id'], expandedColumn: true),
    PlutoColumnGroup(title: 'Status', children: [
      PlutoColumnGroup(title: 'A', fields: ['Nivel'], expandedColumn: true),
      PlutoColumnGroup(title: 'Carimbo.', fields: ['Data', 'Hora']),
    ]),
  ];

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
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pluto_grid/pluto_grid.dart';

void main() {
  runApp(const T_Participante());
}

class T_Participante extends StatelessWidget {
  const T_Participante({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CADASTRO PARTICIPANTE',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CadastroParticipante(),
    );
  }
}

/// PlutoGrid Example
//
/// For more examples, go to the demo web link on the github below.
class CadastroParticipante extends StatefulWidget {
  const CadastroParticipante({Key? key}) : super(key: key);

  @override
  State<CadastroParticipante> createState() => _CadastroParticipanteState();
}

class _CadastroParticipanteState extends State<CadastroParticipante> {
  final List<PlutoColumn> columns = <PlutoColumn>[
    PlutoColumn(
      title: 'Id',
      field: 'id',
      type: PlutoColumnType.text(),
      titleTextAlign: PlutoColumnTextAlign.center,
      backgroundColor: Colors.amberAccent,
    ),
    PlutoColumn(
      title: 'Nome',
      field: 'nome',
      type: PlutoColumnType.text(),
      titleTextAlign: PlutoColumnTextAlign.center,
      backgroundColor: Colors.blueGrey,
    ),
    PlutoColumn(
      title: 'Função/Cargo',
      field: 'função/cargo',
      type: PlutoColumnType.text(),
      titleTextAlign: PlutoColumnTextAlign.center,
      backgroundColor: Colors.blueGrey,
    ),
    PlutoColumn(
      title: 'Email',
      field: 'email',
      type: PlutoColumnType.text(),
      titleTextAlign: PlutoColumnTextAlign.center,
      backgroundColor: Colors.blueGrey,
    ),
  ];

  final List<PlutoRow> rows = [
    PlutoRow(
      cells: {
        'id': PlutoCell(value: 'user1'),
        'nome': PlutoCell(value: 'João'),
        'função/cargo': PlutoCell(value: 'Gerente'),
        'email': PlutoCell(value: 'gerente@teste.com'),
      },
    ),
    PlutoRow(
      cells: {
        'id': PlutoCell(value: 'user2'),
        'nome': PlutoCell(value: 'Maria'),
        'função/cargo': PlutoCell(value: 'Garantista'),
        'email': PlutoCell(value: 'Garantista@teste.com'),
      },
    ),
    PlutoRow(
      cells: {
        'id': PlutoCell(value: 'user3'),
        'nome': PlutoCell(value: 'Carlo'),
        'função/cargo': PlutoCell(value: 'Chefe oficina'),
        'email': PlutoCell(value: 'oficina@test.com'),
      },
    ),
  ];

  /// columnGroups that can group columns can be omitted.
  final List<PlutoColumnGroup> columnGroups = [
    PlutoColumnGroup(title: 'Id', fields: ['id'], expandedColumn: true),
    PlutoColumnGroup(
        title: 'Informações dos Participantes',
        backgroundColor: Colors.blueGrey,
        fields: ['nome', 'função/cargo', 'email']),
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

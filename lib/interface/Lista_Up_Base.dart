import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pluto_grid/pluto_grid.dart';

void main() {
  runApp(const Lista_Up_Base());
}

class Lista_Up_Base extends StatelessWidget {
  const Lista_Up_Base({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CARREGAR BASE',
      home: const CarregarBaseGarantia(),
    );
  }
}

/// PlutoGrid Example
//
/// For more examples, go to the demo web link on the github below.
class CarregarBaseGarantia extends StatefulWidget {
  const CarregarBaseGarantia({Key? key}) : super(key: key);

  @override
  State<CarregarBaseGarantia> createState() => _CarregarBaseGarantiaState();
}

class _CarregarBaseGarantiaState extends State<CarregarBaseGarantia> {
  final List<PlutoColumn> columns = <PlutoColumn>[
    PlutoColumn(
      title: 'Bir',
      field: 'bir',
      type: PlutoColumnType.text(),
      titleTextAlign: PlutoColumnTextAlign.center,
      backgroundColor: Colors.amberAccent,
    ),
    PlutoColumn(
      title: 'Mês',
      field: 'mês',
      type: PlutoColumnType.text(),
      titleTextAlign: PlutoColumnTextAlign.center,
      backgroundColor: Colors.blueGrey,
    ),
    PlutoColumn(
      title: 'Os',
      field: 'os',
      type: PlutoColumnType.text(),
      titleTextAlign: PlutoColumnTextAlign.center,
      backgroundColor: Colors.blueGrey,
    ),
    PlutoColumn(
      title: 'Fat',
      field: 'fat',
      type: PlutoColumnType.text(),
      titleTextAlign: PlutoColumnTextAlign.center,
      backgroundColor: Colors.blueGrey,
    ),
    PlutoColumn(
      title: 'Int',
      field: 'int',
      type: PlutoColumnType.text(),
      titleTextAlign: PlutoColumnTextAlign.center,
      backgroundColor: Colors.blueGrey,
    ),
    PlutoColumn(
      title: 'Vin',
      field: 'vin',
      type: PlutoColumnType.text(),
      titleTextAlign: PlutoColumnTextAlign.center,
      backgroundColor: Colors.blueGrey,
    ),
    PlutoColumn(
      title: 'Nat',
      field: 'nat',
      type: PlutoColumnType.text(),
      titleTextAlign: PlutoColumnTextAlign.center,
      backgroundColor: Colors.blueGrey,
    ),
    PlutoColumn(
      title: 'Valor',
      field: 'valor',
      type: PlutoColumnType.text(),
      titleTextAlign: PlutoColumnTextAlign.center,
      backgroundColor: Colors.blueGrey,
    ),
    PlutoColumn(
      title: 'Nitg',
      field: 'nitg',
      type: PlutoColumnType.text(),
      titleTextAlign: PlutoColumnTextAlign.center,
      backgroundColor: Colors.blueGrey,
    ),
    PlutoColumn(
      title: 'Apont',
      field: 'apont',
      type: PlutoColumnType.text(),
      titleTextAlign: PlutoColumnTextAlign.center,
      backgroundColor: Colors.blueGrey,
    ),
    PlutoColumn(
        title: 'M/O',
        field: 'm/o',
        type: PlutoColumnType.text(),
        titleTextAlign: PlutoColumnTextAlign.center,
        backgroundColor: Colors.green),
    PlutoColumn(
        title: 'P/Ç',
        field: 'p/ç',
        type: PlutoColumnType.text(),
        titleTextAlign: PlutoColumnTextAlign.center,
        backgroundColor: Colors.greenAccent),
    PlutoColumn(
        title: 'Dia',
        field: 'dia',
        type: PlutoColumnType.select(<String>['1', '2', '3', '4', '5']),
        titleTextAlign: PlutoColumnTextAlign.center,
        backgroundColor: Colors.blue),
    PlutoColumn(
        title: 'Descritivo',
        field: 'descritivo',
        type: PlutoColumnType.select(<String>[
          '23 peças não localizadas',
          '18 sem requisição de peças',
          '1 Sem assinatura'
        ]),
        titleTextAlign: PlutoColumnTextAlign.center,
        backgroundColor: Colors.green),
    PlutoColumn(
        title: 'Grau',
        field: 'grau',
        type: PlutoColumnType.select(<String>['1', '2']),
        titleTextAlign: PlutoColumnTextAlign.center,
        backgroundColor: Colors.redAccent),
    PlutoColumn(
        title: 'PÇ/MO',
        field: 'pç/mo',
        type: PlutoColumnType.text(),
        titleTextAlign: PlutoColumnTextAlign.center,
        backgroundColor: Colors.redAccent),
    PlutoColumn(
        title: 'Estorno',
        field: 'estorno',
        type: PlutoColumnType.text(),
        titleTextAlign: PlutoColumnTextAlign.center,
        backgroundColor: Colors.redAccent),
  ];

  final List<PlutoRow> rows = [
    PlutoRow(
      cells: {
        'bir': PlutoCell(value: '007605423'),
        'mês': PlutoCell(value: '202111'),
        'os': PlutoCell(value: '99'),
        'fat': PlutoCell(value: '2513'),
        'int': PlutoCell(value: 'A'),
        'vin': PlutoCell(value: 'zzzzzzzzzzzzz'),
        'nat': PlutoCell(value: 'G36'),
        'valor': PlutoCell(value: '1450,23'),
        'nitg': PlutoCell(value: 'G14D'),
        'apont': PlutoCell(value: 'escrape'),
        'm/o': PlutoCell(value: ''),
        'p/ç': PlutoCell(value: ''),
        'dia': PlutoCell(value: ''),
        'descritivo': PlutoCell(value: ''),
        'grau': PlutoCell(value: ''),
        'pç/mo': PlutoCell(value: ''),
        'estorno': PlutoCell(value: ''),
      },
    ),
    PlutoRow(
      cells: {
        'bir': PlutoCell(value: '007605423'),
        'mês': PlutoCell(value: '20218'),
        'os': PlutoCell(value: '32546'),
        'fat': PlutoCell(value: '2558'),
        'int': PlutoCell(value: 'A'),
        'vin': PlutoCell(value: 'zzz'),
        'nat': PlutoCell(value: 'G36'),
        'valor': PlutoCell(value: '44518'),
        'nitg': PlutoCell(value: 'G14D'),
        'apont': PlutoCell(value: 'escrape'),
        'm/o': PlutoCell(value: ''),
        'p/ç': PlutoCell(value: ''),
        'dia': PlutoCell(value: ''),
        'descritivo': PlutoCell(value: ''),
        'grau': PlutoCell(value: ''),
        'pç/mo': PlutoCell(value: ''),
        'estorno': PlutoCell(value: ''),
      },
    ),
    PlutoRow(
      cells: {
        'bir': PlutoCell(value: '007605423'),
        'mês': PlutoCell(value: '202111'),
        'os': PlutoCell(value: '3254'),
        'fat': PlutoCell(value: '2513'),
        'int': PlutoCell(value: 'A'),
        'vin': PlutoCell(value: 'zzz'),
        'nat': PlutoCell(value: 'G36'),
        'valor': PlutoCell(value: '1523'),
        'nitg': PlutoCell(value: 'G14D'),
        'apont': PlutoCell(value: 'escrape'),
        'm/o': PlutoCell(value: ''),
        'p/ç': PlutoCell(value: ''),
        'dia': PlutoCell(value: ''),
        'descritivo': PlutoCell(value: ''),
        'grau': PlutoCell(value: ''),
        'pç/mo': PlutoCell(value: ''),
        'estorno': PlutoCell(value: ''),
      },
    ),
    PlutoRow(
      cells: {
        'bir': PlutoCell(value: '007605423'),
        'mês': PlutoCell(value: '202111'),
        'os': PlutoCell(value: '3254'),
        'fat': PlutoCell(value: '2513'),
        'int': PlutoCell(value: 'A'),
        'vin': PlutoCell(value: 'zzz'),
        'nat': PlutoCell(value: 'G36'),
        'valor': PlutoCell(value: '1523'),
        'nitg': PlutoCell(value: 'G14D'),
        'apont': PlutoCell(value: 'escrape'),
        'm/o': PlutoCell(value: ''),
        'p/ç': PlutoCell(value: ''),
        'dia': PlutoCell(value: ''),
        'descritivo': PlutoCell(value: ''),
        'grau': PlutoCell(value: ''),
        'pç/mo': PlutoCell(value: ''),
        'estorno': PlutoCell(value: ''),
      },
    ),
    PlutoRow(
      cells: {
        'bir': PlutoCell(value: '007605423'),
        'mês': PlutoCell(value: '202111'),
        'os': PlutoCell(value: '3254'),
        'fat': PlutoCell(value: '2513'),
        'int': PlutoCell(value: 'A'),
        'vin': PlutoCell(value: 'zzz'),
        'nat': PlutoCell(value: 'G36'),
        'valor': PlutoCell(value: '1523'),
        'nitg': PlutoCell(value: 'G14D'),
        'apont': PlutoCell(value: 'escrape'),
        'm/o': PlutoCell(value: ''),
        'p/ç': PlutoCell(value: ''),
        'dia': PlutoCell(value: ''),
        'descritivo': PlutoCell(value: ''),
        'grau': PlutoCell(value: ''),
        'pç/mo': PlutoCell(value: ''),
        'estorno': PlutoCell(value: ''),
      },
    ),
    PlutoRow(
      cells: {
        'bir': PlutoCell(value: '007605423'),
        'mês': PlutoCell(value: '202111'),
        'os': PlutoCell(value: '3254'),
        'fat': PlutoCell(value: '2513'),
        'int': PlutoCell(value: 'A'),
        'vin': PlutoCell(value: 'zzz'),
        'nat': PlutoCell(value: 'G36'),
        'valor': PlutoCell(value: '1523'),
        'nitg': PlutoCell(value: 'G14D'),
        'apont': PlutoCell(value: 'escrape'),
        'm/o': PlutoCell(value: ''),
        'p/ç': PlutoCell(value: ''),
        'dia': PlutoCell(value: ''),
        'descritivo': PlutoCell(value: ''),
        'grau': PlutoCell(value: ''),
        'pç/mo': PlutoCell(value: ''),
        'estorno': PlutoCell(value: ''),
      },
    ),
    PlutoRow(
      cells: {
        'bir': PlutoCell(value: '007605423'),
        'mês': PlutoCell(value: '202111'),
        'os': PlutoCell(value: '3254'),
        'fat': PlutoCell(value: '2513'),
        'int': PlutoCell(value: 'A'),
        'vin': PlutoCell(value: 'zzz'),
        'nat': PlutoCell(value: 'G36'),
        'valor': PlutoCell(value: '1523'),
        'nitg': PlutoCell(value: 'G14D'),
        'apont': PlutoCell(value: 'escrape'),
        'm/o': PlutoCell(value: ''),
        'p/ç': PlutoCell(value: ''),
        'dia': PlutoCell(value: ''),
        'descritivo': PlutoCell(value: ''),
        'grau': PlutoCell(value: ''),
        'pç/mo': PlutoCell(value: ''),
        'estorno': PlutoCell(value: ''),
      },
    ),
    PlutoRow(
      cells: {
        'bir': PlutoCell(value: '007605423'),
        'mês': PlutoCell(value: '202111'),
        'os': PlutoCell(value: '3254'),
        'fat': PlutoCell(value: '2513'),
        'int': PlutoCell(value: 'A'),
        'vin': PlutoCell(value: 'zzz'),
        'nat': PlutoCell(value: 'G36'),
        'valor': PlutoCell(value: '1523'),
        'nitg': PlutoCell(value: 'G14D'),
        'apont': PlutoCell(value: 'escrape'),
        'm/o': PlutoCell(value: ''),
        'p/ç': PlutoCell(value: ''),
        'dia': PlutoCell(value: ''),
        'descritivo': PlutoCell(value: ''),
        'grau': PlutoCell(value: ''),
        'pç/mo': PlutoCell(value: ''),
        'estorno': PlutoCell(value: ''),
      },
    ),
  ];

  /// columnGroups that can group columns can be omitted.
  final List<PlutoColumnGroup> columnGroups = [
    PlutoColumnGroup(
        title: 'Estornos Peças + M/o',
        backgroundColor: Colors.amberAccent,
        fields: ['pç/mo'],
        expandedColumn: false),
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

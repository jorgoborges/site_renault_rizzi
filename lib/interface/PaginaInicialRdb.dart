import 'package:flutter/material.dart';
import 'package:flutter_collapsing_toolbar/flutter_collapsing_toolbar.dart';
import 'package:site_renault_rizzi/interface/2PosVendasRdb.dart';



void main() => runApp(PaginaInicialRdb());

const kSampleIcons = [
  Icons.track_changes_outlined,
  Icons.receipt_long_outlined,
  Icons.wifi_protected_setup_outlined,
  Icons.add_to_home_screen_outlined,
  Icons.account_box_outlined,
];
const kSampleIconLabels = [
  'Pós Vendas',
  'Vendas',
  'Opção',
  'Opção',
  'Opção',
];

class PaginaInicialRdb extends StatefulWidget {
  @override
  _PaginaInicialRdbState createState() => _PaginaInicialRdbState();
}

class _PaginaInicialRdbState extends State<PaginaInicialRdb> {
  final controller = ScrollController();
  double headerOffset = 0.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portal',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Container(
          margin: const EdgeInsets.only(top: 24.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: CollapsingToolbar(
                  controller: controller,
                  expandedHeight: 160,
                  collapsedHeight: 64,
                  decorationForegroundColor: Color(0xffd90000),
                  decorationBackgroundColor: Colors.greenAccent,
                  onCollapsing: (double offset) {
                    setState(() {
                      headerOffset = offset;
                    });
                  },
                  leading: Container(
                    margin: EdgeInsets.only(left: 12),
                    padding: EdgeInsets.all(4),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: CircleBorder(),
                    ),
                    child: Icon(
                      Icons.person,
                      size: 24,
                      color: Colors.black38,
                    ),
                  ),
                  title: Text(
                    'User',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  actions: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(CircleBorder()),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.transparent),
                        elevation: MaterialStateProperty.all(0.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 24,
                        ),
                      ),
                    ),
                  ],
                  featureCount: 5,
                  featureIconBuilder: (context, index) {
                    return Icon(
                      kSampleIcons[index],
                      size: 54,
                      color: Colors.white,
                    );
                  },
                  featureLabelBuilder: (context, index) {
                    return Text(
                      kSampleIconLabels[index],
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    );
                  },
                  featureOnPressed: (context, index) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PosVendasRdb()));
                  },
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: SingleChildScrollView(
                    controller: controller,
                    child: Column(
                      children: [
                        Container(
                          height: headerOffset,
                        ),
                        Image.asset('assets/sample.jpg'),
                        Container(
                          height: 350,
                          color: Colors.white,
                        ),
                      ],
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

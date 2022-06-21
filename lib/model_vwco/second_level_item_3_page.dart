import 'package:flutter/material.dart';
import 'package:site_renault_rizzi/interface/admin_scaffold.dart.dart';

class SecondLevelItem3Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      route: '/secondLevelItem3',
      body: Container(
        width: 900,
        height: 600,
        alignment: Alignment.center,
        padding: const EdgeInsets.all(10),
        child: Image.network(
          'https://snz04pap002files.storage.live.com/y4mKcQhdLh-k24wqSkxWRktWfGkmCwEAbAtQP9tI3E79VtMvuqGje6pCXu-raYXSHt0a9zqvac6GmbPe_0Ut4BvaJome-YUi960oIvebE-v2Ob4TAMsiZbuCO4wcqOumADhlEXJ_1uoBjxIub8VN0ELWauiS18iw8rITfdF4Sqb0jmC0ivLKl30Ygm4lwSQYAoDBQFmGlQvrfP-FDXIYgw9Ha12tJA9JiVcv0UBrpBEajA?encodeFailures=1&width=855&height=461',
          fit: BoxFit.fill,


        ),
      ),
    );
  }
}

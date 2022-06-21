import 'package:flutter/material.dart';
import 'package:site_renault_rizzi/interface/admin_scaffold.dart.dart';

class SecondLevelItem2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      route: '/secondLevelItem2',
      body: Container(
        width: 900,
        height: 600,
        alignment: Alignment.center,
        padding: const EdgeInsets.all(10),
        child: Image.network(
          'https://snz04pap002files.storage.live.com/y4msfARX12Y9VVmPUnCwp1BVidIs_mFEi8GRkPjKqPpT2W5fJZoWAE7hGvvAdf-AYlpz03rIVSsFoLYsWjqJou8XEMA5BXAoDu11czkzvyyuw2zpnU3AKwLBZPm3YL2msAyHiC7QG-eQoml2gKYX6AZ7jPqkbq2qp2sW93gpGqM1782vn-uUSd1jZ0DjZDRKCgMH8Z-Un14LSyxL14zRWc71kdjWpYUuGd-tLxsImUJouA?encodeFailures=1&width=865&height=464'  ,
          fit: BoxFit.fill,

        ),
      ),
    );
  }
}

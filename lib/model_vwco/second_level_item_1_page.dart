import 'package:flutter/material.dart';

import 'package:site_renault_rizzi/interface/admin_scaffold.dart.dart';

import 'package:flutter/cupertino.dart';

class SecondLevelItem1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      route: '/secondLevelItem1',
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(left: 20, top:10),
        child: Image.network(
          'https://snz04pap002files.storage.live.com/y4mfHIYgcFGiKnW-SST7N9MWB5Z_QSjZPgdPRySKgO9NVga31_fsZYKRrQfBId1YRi2hQiAsae9DTbti65gIfRWWZUo_NBbO-Q2XEfori8iSrxXKCUxzk2tOM-oAQAnboPpNzlyC24UGowe5twAK3U-0SjnYsewdOh_B-vESdlX79RJRNC8fF8T29GaPmaOVj3tsUHGdVDKnaJfyKD9AG0DuAH_1laC4uu5Y8imcNLsR3A?encodeFailures=1&width=1442&height=765',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

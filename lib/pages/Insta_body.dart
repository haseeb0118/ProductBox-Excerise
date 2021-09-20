import 'package:flutter/material.dart';

import 'InstaList.dart';

class InstaBody  extends StatelessWidget {
  const InstaBody ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Flexible(child: InstaList()),
      ],
    );
  }
}

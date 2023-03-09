import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'model/model.dart';

class Receba extends StatelessWidget {
  Archon archon;
  Receba({super.key, required this.archon});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(archon.toString()),
    );
  }
}

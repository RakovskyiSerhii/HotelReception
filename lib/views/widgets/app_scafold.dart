import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({Key? key, required this.child}) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoScaffold(body: child)
        : Scaffold(body: child);
  }
}

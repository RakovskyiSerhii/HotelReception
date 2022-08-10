import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_reception/views/setup_hotel/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Flutter Hotel Reception',
      // theme: ThemeData(primarySwatch: Colors.blue),
      
      home: SetupHotelView(),
    );
  }
}

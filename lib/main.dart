import 'package:flutter/material.dart';
import 'package:tickit_test/events_listing.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tickit Test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SelectOrganizationWidget(),
    );
  }
}

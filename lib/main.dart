import 'package:flutter/material.dart';
import 'package:navigation_drawer/ui/My_Drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Drawer',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: const MyDrawer(),
    );
  }
}

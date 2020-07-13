import 'dart:async';
import 'package:flutter/material.dart';

import 'whatsapp_home.dart';


Future<Null> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "WhatsApp",
      theme: new ThemeData(
        primaryColor: new Color.fromARGB(255,35, 45, 54),
        accentColor: new Color.fromARGB(255, 0, 176, 156)
      ),
      debugShowCheckedModeBanner: false,
      home: new WhatsAppHome(),
    );
  }
}

import 'package:codigoqr/QrScanPage.dart';
import 'package:flutter/material.dart';

import 'BarcodeScanPage.dart';
import 'HomePage.dart';
import 'QrGeneratorPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QR & Barcode',
      theme: ThemeData(primarySwatch: Colors.red),
       debugShowCheckedModeBanner: false, // Agrega esta línea para desactivar el banner de depuración

      routes: {
        '/': (context) => HomePage(),
        '/barcode_scan': (context) => BarcodeScanPage(),
        '/qr_generator': (context) => QrGeneratorPage(),
        '/qr_scan': (context) => QrScanPage(),

      },
    );
  }
}

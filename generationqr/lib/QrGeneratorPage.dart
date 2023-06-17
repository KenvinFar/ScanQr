import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrGeneratorPage extends StatefulWidget {
  @override
  _QrGeneratorPageState createState() => _QrGeneratorPageState();
}

class _QrGeneratorPageState extends State<QrGeneratorPage> {
  String qrText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Genera QR Code'),
        backgroundColor: Color.fromARGB(255, 219, 52, 135), 
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              onChanged: (text) {
                setState(() {
                  qrText = text;
                });
              },
              decoration: InputDecoration(
                labelText: 'Ingrese el texto',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromARGB(255, 6, 228, 54)),
                  borderRadius: BorderRadius.circular(8.0),
                  color: Color.fromARGB(255, 7, 233, 214), 
                ),
                child: Center(
                  child: qrText.isNotEmpty
                      ? QrImageView(
                          data: qrText,
                          version: QrVersions.auto,
                          size: 200.0,
                        )
                      : Text(
                          'Generar el QR',
                          style: TextStyle(fontSize: 18.0),
                        ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

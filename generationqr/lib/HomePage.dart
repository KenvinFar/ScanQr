import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, dynamic>> options = [
    {
      'title': 'Scanear código QR',
      'route': '/qr_scan',
      'icon': Icons.qr_code,
    },
    {
      'title': 'Scanear código de barras',
      'route': '/barcode_scan',
      'icon': Icons.qr_code,
    },
    {
      'title': 'Generar código QR',
      'route': '/qr_generator',
      'icon': Icons.qr_code_scanner,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CODIGO QR Y BARRAS'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 1,
              child: Center(
                child: Text(
                  'Bienvenidos a generar y Scanear código QR y código de barras',
                  style: TextStyle(
                    fontSize: 24,
                    color: Color.fromARGB(255, 236, 163, 5), 
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(height: 32),
            Expanded(
              flex: 2,
              child: ListView.builder(
                itemCount: options.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    color: Color.fromARGB(255, 5, 228, 191), 
                    child: ListTile(
                      onTap: () {
                        Navigator.pushNamed(context, options[index]['route']);
                      },
                      leading: Icon(options[index]['icon']),
                      title: Text(
                        options[index]['title'],
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      trailing: Icon(Icons.arrow_forward),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}



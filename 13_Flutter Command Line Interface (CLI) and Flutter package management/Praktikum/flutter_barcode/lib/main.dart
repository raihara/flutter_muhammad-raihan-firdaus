import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

// ignore_for_file: public_member_api_docs

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Barcode demo'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: testerBarcode(),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: contohBarcode(),
            ),
            namaBarcode()
          ],
        ),
        ),
      );
  }
}
Widget contohBarcode(){
  return BarcodeWidget(
    data: "Flutter Asik",
    barcode: Barcode.code128(),
    width: 150,
    height: 150,
  );
}
Widget testerBarcode(){
  return BarcodeWidget(
    barcode: Barcode.code128(), // Barcode type and settings
    data: 'Alterra Academy', // Content
    width: 150,
    height: 150,
  );
}
Widget namaBarcode(){
  return BarcodeWidget(
    barcode: Barcode.code128(), // Barcode type and settings
    data: 'Muhammad Raihan Firdaus', // Content
    width: 150,
    height: 150,
  );
}
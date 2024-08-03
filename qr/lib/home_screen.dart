import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:qr/simplescanner.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final MobileScannerController controller =  MobileScannerController(

  );

  StreamSubscription<Object?>? _subscription;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Qr scanner"),
        centerTitle: true,
        elevation: 0.5,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: ElevatedButton(
            onPressed: () {

              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context)=> BarcodeScannerSimple() ),
              );
            },
            child: Text("Click to scan!"),
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                textStyle: const TextStyle(fontSize: 25)),
          ))
        ],
      ),
    );
  }
}

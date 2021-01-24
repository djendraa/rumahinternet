import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class Payment extends StatefulWidget {
  @override
  _PaymentState createState() => new _PaymentState();
}

class _PaymentState extends State<Payment> {
  String barcode = "";

  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.camera_enhance),
                iconSize: 100,
                onPressed: () async {
                  try {
                    String barcode = await BarcodeScanner.scan();
                    setState(() {
                      this.barcode = barcode;
                      _launchInBrowser('$barcode');
                    });
                  } on PlatformException catch (error) {
                    if (error.code == BarcodeScanner.CameraAccessDenied) {
                      setState(() {
                        this.barcode = 'Izin kamera tidak diizinkan oleh si pengguna';
                      });
                    } else {
                      setState(() {
                        this.barcode = 'Error: $error';
                      });
                    }
                  }
                },
              ),
            ],
          ),
    );
  }
}
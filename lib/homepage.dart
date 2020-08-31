import 'package:flutter/material.dart';
import 'package:flutter_qr_code/generate.dart';
import 'package:flutter_qr_code/scan.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("QR Code Scanner"),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset(
              'assets/qrcode_logo.jpg',
              scale: 2,
            ),
            flatButton("Scan QR COde", ScanPage()),
            SizedBox(height: 15,),
            flatButton("Generate QR Code", Generate()),
            SizedBox(height: 30,),
            Center(child: Text("QR Code Scanner by Namesh Kushantha"))
          ],
        ),
      ),
    );
  }

  Widget flatButton(String text, Widget widget){
    return Container(
      height: 40,
      child: FlatButton(
        child: Text(text),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>widget));
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
          side: BorderSide(color: Colors.blue, width: 3.0)
        ),
      ),
    );
  }
}

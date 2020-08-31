import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Generate extends StatefulWidget {
  @override
  _GenerateState createState() => _GenerateState();
}

class _GenerateState extends State<Generate> {
  String qrData = "Namesh Kushantha";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Generate"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              QrImage(
                data: qrData,
              ),
              SizedBox(
                height: 10,
              ),
              Text("Get your data/link to the QR Code"),
              TextField(
                controller: qrText,
                decoration: InputDecoration(hintText: "Enter the Data/Link"),
              ),
              SizedBox(height: 20,),
              Container(
                height: 40,
                child: FlatButton(
                  child: Text("Generate QR Code"),
                  onPressed: () {
                    if(qrText.text.isEmpty){
                      setState(() {
                        qrData = "Namesh Kushantha";
                      });
                    }else{
                      setState(() {
                        qrData = qrText.text;
                      });
                    }
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side: BorderSide(color: Colors.blue, width: 3.0)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  final qrText = TextEditingController();
}

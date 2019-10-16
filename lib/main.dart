import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:request_api_bee_mart/apiBee/apiBeeMart.dart';
import 'package:request_api_bee_mart/model/respon_api.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Request Api',
            style: TextStyle(color: Colors.black, fontSize: 24),
          ),
          backgroundColor: Colors.yellow,
        ),
        body: SendData(),
      ),
    );
  }
}

class SendData extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SendDataState();
  }
}

class SendDataState extends State<SendData> {
  var _dio = Dio();
  List<dynamic> listData;
  List<AddressRespon> github = [];
  String data ;
  AddressRespon demoG;

  _getApiBases() async {
    ApiService()
        .getGitHubs(
            "http://192.168.13.21:12345/swagger-ui.html#/address-controller/addAddressUsingPOST_1")
        .then((response) {
      if (!mounted) {
        return;
      }
      if (data != null) {
        setState(() {
          debugger();
          listData = response.data.items.take(2).toList();
          debugger();
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Text(data),
          Center(
              child: RaisedButton(
            // ${data.toString()}
            child: Text('Button'),
            onPressed: _getApiBases,
          )),
        ],
      ),
    );
  }
}

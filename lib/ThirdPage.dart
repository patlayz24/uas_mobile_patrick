import 'package:aplikasi_pemilah_sampah/FourthPage.dart';
import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  ThirdPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text('UTS'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.asset(
              'images/3.jpeg',
              fit: BoxFit.fill,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(10.0),
                  child: Text(
                      'sampah non-organik atau anorganik sangat sulit terurai',
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                      textAlign: TextAlign.justify,
                      softWrap: true,
                      overflow: TextOverflow.clip),
                ),
              ],
            ),
            Container(
              child: RaisedButton(
                child: Text('Halaman 3'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (BuildContext context) {
                      return FourthPage();
                    }),
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

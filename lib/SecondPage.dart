import 'package:flutter/material.dart';
import 'ThirdPage.dart';

class SecondPage extends StatefulWidget {
  SecondPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
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
              'images/2.jpeg',
              fit: BoxFit.fill,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(10.0),
                  child: Text(
                      'Sampah organik adalah jenis sampah yang mudah terurai',
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
                      return ThirdPage();
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

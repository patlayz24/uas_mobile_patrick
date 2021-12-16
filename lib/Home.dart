import 'package:flutter/material.dart';
import 'SecondPage.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text('UTS'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.asset(
              'images/1.jpeg',
              fit: BoxFit.fill,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    margin: EdgeInsets.all(10.0),
                    child: Text(
                      'sampah adalah sisa kegiatan setiap hari manusia atau\n proses alam yang berbentuk padat atau semi padat\n berupa zat organik dan anorganik bersifat dapat\n diurai atau tidak dapat diurai',
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                      textAlign: TextAlign.justify,
                      softWrap: true,
                      overflow: TextOverflow.clip,
                    ),
                  ),
                ]),
            Container(
              child: RaisedButton(
                child: Text('Halaman 2'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (BuildContext context) {
                      return SecondPage();
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

import 'package:flutter/material.dart';
import 'Profile.dart';

class FourthPage extends StatefulWidget {
  FourthPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _FourthPageState createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
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
              'images/4.jpeg',
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
                child: Text('Profile'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (BuildContext context) {
                      return Profile();
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

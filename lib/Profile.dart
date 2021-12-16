import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  Profile({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
          child: Column(children: <Widget>[
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.all(10.0),
                    child: Text('Patrick Lay - 20195520010',
                        style: TextStyle(
                            fontSize: 35.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                  ),
                ]),
          ]),
        ));
  }
}

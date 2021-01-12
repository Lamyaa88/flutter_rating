import 'package:flutter/material.dart';
import 'package:getflutter/components/rating/gf_rating.dart';

void main(){
  runApp(MaterialApp(
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.dark,
        primaryColor: Colors.yellow.shade700,
        accentColor: Colors.yellowAccent,
        secondaryHeaderColor: Colors.yellowAccent

      ),


    home: MyApp(),
  ));
}


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _rating = .5;

  double count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GFRating(
                  borderColor: Colors.yellow.shade700,
                  size: 60.0,
                  color: Colors.yellow.shade700,
                  allowHalfRating: true,
                  value: _rating,
                  onChanged: (value) {
                    setState(() {
                      _rating = value;
                      print(value);
                    });
                  },
                ),
//                RaisedButton(
//                  onPressed: () {
//                    setState(() {
//                      _rating = count++;
//                    });
//                  },
//                  child: Text("Click Me"),
//                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
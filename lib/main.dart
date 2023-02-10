import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello"),
        ),
        body:
          Center(
            child: InkWell(
              onTap: (){
                print("Tapped on container");
              },
              onDoubleTap: (){
                print("Double Tapped on container");
              },
              onLongPress: (){
                print("Long pressed on container");
              },
              child: Container(
                width: 200,
                height: 200,
                color: Colors.amber,
                child: Center(child: InkWell(
                  onTap: (){
                    print("Text widget tapped");
                  },
                    child: Text("Click here", style: TextStyle(fontSize: 21, fontWeight: FontWeight.w700),
                    )
                ),
                ),
              ),
            ),
          )
      ),
    );
  }
}

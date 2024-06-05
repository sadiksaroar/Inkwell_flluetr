import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("InKell vs GestureDector")),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: (){
                  print("InkWell tapped");
                },
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    'InkWll',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(width: 20),
              GestureDetector(
                onTap: (){
                  print("GestureDetector tapped");
                },
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    'Sadik Saroar',
                    style: TextStyle(color: Colors.white),
                  ),

                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

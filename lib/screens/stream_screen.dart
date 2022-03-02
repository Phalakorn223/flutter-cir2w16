import 'dart:async';

import 'package:flutter/material.dart';

class StreamScreen extends StatelessWidget {
  static String id = "/strem";
  final StreamController streamController =
  StreamController(); //1.create new stream controller
  //const StreamScreen({Key? key}) : super(key: key);
  void streamData() async {
    //3.Listener to the stream
    streamController.stream.listen((data) {
      print(data);
    });
    //2.Adding data to the stream
    for (int i = 0; i < 4; i++) {
      streamController.add("คุณได้รับข้อความ");
      await Future.delayed(Duration(seconds: 2),() {
        print("อ่าน");
      },);
    }
  }

  Stream myStream()async*{
    for(var i = 0;i<10;i++){
      yield i;
      await Future.delayed(Duration(seconds: 2));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Stream"),
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                streamData();
              },
              child: Text("...."),
            ),
            SizedBox(height: 20),
            StreamBuilder(
              stream : myStream(),
              builder: (_, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  return Text(snapshot.data.toString(), style: TextStyle(fontSize: 45,color: Colors.cyan));
                }
                return Center(
                  child: CircularProgressIndicator(),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
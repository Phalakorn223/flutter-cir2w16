import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 7), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomeScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hi Phalakorn",style: TextStyle(color: Colors.white,fontSize: 55,fontWeight: FontWeight.bold)),
            Center(
              child: Image.network(
                "https://www.google.com/url?sa=i&url=https%3A%2F%2Flogos-world.net%2Fdiscord-celebrates-birthday-with-a-new-style-logo-font-and-slogan%2F&psig=AOvVaw2ludrjHIgEg_HmSIc-yPj6&ust=1646123785508000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCPDTzI7_ofYCFQAAAAAdAAAAABAD",
                height: 200,
                width: double.infinity,
              ),
            ),
            SizedBox(height: 20),
            CircularProgressIndicator.adaptive(
              valueColor: AlwaysStoppedAnimation(Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
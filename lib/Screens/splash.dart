import 'package:eventapp/Screens/home.dart';
import 'package:flutter/material.dart';
//import 'package:pokemon/Screens/home.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {


    Future<void> nextscreen() async {

         await Future.delayed(const Duration(milliseconds: 3000));
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Home()),
            );
         
    }

    @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nextscreen();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(40),
              child: Image.asset(
                  "assets/images/Group.png",
                  height: 100,
                  width: 100,
                  fit:BoxFit.contain,
                  ),
            ),
            Text("EventHub",

                style: TextStyle(fontFamily: "ProductSans-Bold",fontSize: 16),
            )
          ],
        )),

    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:pokemon/Screens/quizscreen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        elevation: 0,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.bell))
        ],
        title: Text(
          "Event Hub",
          style: TextStyle(fontFamily: "ProductSans-Bold", fontSize: 20),
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(color: Color(0xff4D4D4D), width: 2.0),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: TextField(
                  onChanged: (value) {
                    //filterItems(value);
                  },
                  decoration: InputDecoration(
                    hintText: 'Search',
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
            ),
          ),
          Row(children: [
            Text(
          "Event Hub",
          style: TextStyle(fontFamily: "ProductSans-Bold", fontSize: 20),
        ),
          ],)
          // SizedBox(
          //   height: 45,
          //   child: ListView(
          //     scrollDirection: Axis.horizontal,
          //     children: [
          //       Container(
          //         width: 100,
          //     decoration: BoxDecoration(
          //       color: Color(0xff4285F4),
          //       borderRadius: BorderRadius.circular(20.0),
          //       border: Border.all(color: Color(0xff4285F4), width: 2.0),
          //     ),
          //     padding: EdgeInsets.all(6.0),
          //     margin: EdgeInsets.all(6.0),
          //     child: Row(
          //       mainAxisSize: MainAxisSize.min,
          //       children: [
          //         Icon(Icons.food_bank, color: Colors.white,size: 20,),
          //         SizedBox(width: 8.0),
          //         Text(
          //           'Food',
          //           style: TextStyle(
          //             fontFamily: "ProductSans-Regular",
          //             color: Colors.white,
          //             fontSize: 14.0,
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
                  
          //     ],
          //   ),
          // )
          // TextButton(onPressed: (){ Navigator.push(
          //     context,
          //     MaterialPageRoute(builder: (context) => Quiz()),
          //   );}, child: Text("Hello"))
        ],
      )),
    );
  }
}

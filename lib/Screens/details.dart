import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
            CupertinoIcons.back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
        title: Text(
          "",
          style: TextStyle(
              fontFamily: "ProductSans-Bold",
              fontSize: 20,
              color: Colors.white),
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(
            "https://res.cloudinary.com/dvhlfyvrr/image/upload/v1697369241/Pet%20Life/Data/Mother_s_Day_rrfryj.png",
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width / 2,
            fit: BoxFit.cover,
            //imageError: 'assets/images/noimage.jpeg',
            // fit: BoxFit.contain,
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Academic Achievement Awards Ceremony",
              style: TextStyle(
                  fontFamily: "ProductSans-Bold",
                  fontSize: 20,
                  color: Colors.black),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffE3F2FD)),
                  child: Icon(Icons.calendar_month),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "21 December 2023",
                        style: TextStyle(
                            fontFamily: "ProductSans-Regular",
                            fontSize: 16,
                            color: Colors.black),
                      ),
                      Text(
                        "2 PM",
                        style: TextStyle(
                            fontFamily: "ProductSans-Regular",
                            fontSize: 14,
                            color: Colors.grey),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffE3F2FD)),
                  child: Icon(Icons.location_pin),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Gala Convention Center",
                        style: TextStyle(
                            fontFamily: "ProductSans-Regular",
                            fontSize: 16,
                            color: Colors.black),
                      ),
                      Text(
                        "location",
                        style: TextStyle(
                            fontFamily: "ProductSans-Regular",
                            fontSize: 14,
                            color: Colors.grey),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Text(
            "About Event",
            style: TextStyle(
                color: Colors.black,
                fontFamily: "ProductSans-Bold",
                fontSize: 18),
          ),
        ],
      ),
    );
  }
}

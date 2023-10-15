import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer_image/shimmer_image.dart';
//import 'package:pokemon/Screens/quizscreen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> l= ["https://res.cloudinary.com/dvhlfyvrr/image/upload/v1697369241/Pet%20Life/Data/Mother_s_Day_rrfryj.png",
 "https://res.cloudinary.com/dvhlfyvrr/image/upload/v1697369241/Pet%20Life/Data/jazz_fjheb3.png",
 "https://res.cloudinary.com/dvhlfyvrr/image/upload/v1697369241/Pet%20Life/Data/Mother_s_Day_rrfryj.png",
 "https://res.cloudinary.com/dvhlfyvrr/image/upload/v1697369241/Pet%20Life/Data/jazz_fjheb3.png",
 "https://res.cloudinary.com/dvhlfyvrr/image/upload/v1697369241/Pet%20Life/Data/International_Kids_Safe_mwyprw.png",
 "https://res.cloudinary.com/dvhlfyvrr/image/upload/v1697369241/Pet%20Life/Data/Mother_s_Day_rrfryj.png",
 "https://res.cloudinary.com/dvhlfyvrr/image/upload/v1697369241/Pet%20Life/Data/jazz_fjheb3.png",
 "https://res.cloudinary.com/dvhlfyvrr/image/upload/v1697369241/Pet%20Life/Data/International_Kids_Safe_mwyprw.png",
 "https://res.cloudinary.com/dvhlfyvrr/image/upload/v1697369241/Pet%20Life/Data/International_Kids_Safe_mwyprw.png"];
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
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          children: [
            Padding(
              padding: const EdgeInsets.all(1.0),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Upcoming Events",
                  style: TextStyle(
                      fontFamily: "ProductSans-Regular", fontSize: 16),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "See All",
                    style: TextStyle(
                        color: Color(0xff90CAF9),
                        fontFamily: "ProductSans-Regular",
                        fontSize: 12),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: l.length,
            itemBuilder: (context,index){

            return Container(
            width: MediaQuery.of(context).size.width / 1.5,
            decoration: BoxDecoration(),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                     l[index],
                      width: MediaQuery.of(context).size.width / 4,
                      height: MediaQuery.of(context).size.width / 4,
fit: BoxFit.cover,
                      //imageError: 'assets/images/noimage.jpeg',
                      // fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 1.8,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "1ST -MAY -SAT-2:00 PM",
                          style: TextStyle(
                              color: Color(0xff2196F3),
                              fontFamily: "ProductSans-Regular",
                              fontSize: 12),
                        ),
                        Text(
                          "Event Namevent Namevent..",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: "ProductSans-Regular",
                              fontSize: 16),
                        ),
                        SizedBox(
                          height: 40,
                          child: ElevatedButton(
                            
                            onPressed: () {
                              // Add your action here
              //                  Navigator.push(
              // context,
              // MaterialPageRoute(builder: (context) => Register()),
           // );
                            },
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.black),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ),
                            child: Text(
                              'Register',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
          }),
            // Container(
            //   width: MediaQuery.of(context).size.width / 1.5,
            //   decoration: BoxDecoration(),
            //   child: Padding(
            //     padding: const EdgeInsets.all(8.0),
            //     child: Row(
                  
            //       children: [
            //         ClipRRect(
            //           borderRadius: BorderRadius.circular(40),
            //           child: Image.network(
            //             "https://res.cloudinary.com/dvhlfyvrr/image/upload/v1697369241/Pet%20Life/Data/Mother_s_Day_rrfryj.png",
            //             width: MediaQuery.of(context).size.width / 4,
            //             height: MediaQuery.of(context).size.width / 4,

            //             //imageError: 'assets/images/noimage.jpeg',
            //             // fit: BoxFit.contain,
            //           ),
            //         ),
            //         SizedBox(width: 20,),
            //         SizedBox(
            //           width: MediaQuery.of(context).size.width/2,
            //           child: Column(
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             mainAxisAlignment: MainAxisAlignment.spaceAround,
            //             children: [
            //               Text(
            //                 "1ST -MAY -SAT-2:00 PM",
            //                 style: TextStyle(
            //                     color: Color(0xff2196F3),
            //                     fontFamily: "ProductSans-Regular",
            //                     fontSize: 12),
            //               ),
            //               Text(
            //                 "Event Name",
            //                 style: TextStyle(
            //                     color: Colors.black,
            //                     fontFamily: "ProductSans-Regular",
            //                     fontSize: 16),
            //               ),
            //               ElevatedButton(
            //                 onPressed: () {
            //                   // Add your action here
            //                 },
            //                 style: ButtonStyle(
            //                   backgroundColor:
            //                       MaterialStateProperty.all(Colors.black),
            //                   shape: MaterialStateProperty.all(
            //                     RoundedRectangleBorder(
            //                       borderRadius: BorderRadius.circular(13.0),
            //                     ),
            //                   ),
            //                 ),
            //                 child: Text(
            //                   'Register',
            //                   style: TextStyle(
            //                     color: Colors.white,
            //                     fontSize: 16.0,
            //                   ),
            //                 ),
            //               ),
            //             ],
            //           ),
            //         )
            //       ],
            //     ),
            //   ),
            // )
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
        ),
      )),
    );
  }
}

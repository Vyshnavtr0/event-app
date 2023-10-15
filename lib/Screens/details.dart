import 'package:eventapp/Screens/register.dart';
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
      body: ListView(
       physics: BouncingScrollPhysics(),
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
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  "About Event",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: "ProductSans-Bold",
                      fontSize: 18),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
                    "The Academic Achievement Awards Ceremony is a prestigious event that serves as a celebration of the academic excellence and accomplishments of students within a particular educational institution or community. This event typically takes place annually and is a momentous occasion for both students and their families. It provides a platform to recognize and reward the hard work, dedication, and outstanding achievements of students across various academic disciplines.During the ceremony, students who have demonstrated exceptional performance in their studies are presented with awards and accolades. These awards can vary from scholarships and certificates of achievement to subject-specific honors and distinctions. The event is often attended by school or university officials, faculty members, and proud parents and guardians who come together to celebrate the academic success of the students.The Academic Achievement Awards Ceremony not only acknowledges and encourages students' pursuit of excellence but also inspires and motivates others to strive for similar accomplishments. It serves as a reminder of the importance of education and the rewards that come from dedication, hard work, and a commitment to learning. Additionally, this event fosters a sense of community and pride within the educational institution, showcasing the commitment to the development and success of its students.",
                  textAlign: TextAlign.justify,
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "ProductSans-Regular",
                        fontSize: 14),
                  ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                                      height: 40,
                                      width: MediaQuery.of(context).size.width/1.1,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          // Add your action here
                                           Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => Register()),
                                          );
                                        },
                                        style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  Colors.black),
                                          shape: MaterialStateProperty.all(
                                            RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
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
        ],
      ),
    );
  }
}

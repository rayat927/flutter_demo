import 'package:flutter/material.dart';
import 'package:project_tuts/Components/ConfettiReport.dart';
import 'package:project_tuts/Components/ScribbleSlider.dart';
import 'package:project_tuts/Components/Slider.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(

            children: [
              Container(
                padding: EdgeInsets.all(25),
                child: Row(
          mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
          crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.logo_dev,
                      size:50,
                      color: Colors.white,
                    ),
                     Text(
                       'Test',
                       style: TextStyle(
                         fontWeight: FontWeight.bold,
                         fontSize: 45,
                         color: Colors.white
                       ),
                     )
                  ],
                ),
              ),
              Container(
                // color: Colors.white,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.white
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Dashboard', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
                          Icon(
                            Icons.settings,
                            size: 30,
                          ),
    ]
                      ),
                    ),

                    Container(
                      color: Colors.white,
                      padding: EdgeInsets.all(25),
                      // height: 200,
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(50.0),
                            child: Image.asset(
                                'assets/profile1.jpg',
                                height: 70.0,
                                width: 70.0,
                                fit: BoxFit.fill
                            ),
                          ),

                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Fyaz Rayaat', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                                SizedBox(height: 8,),
                                Row(
                                  children: [
                                    Text('Misja:',style: TextStyle(fontWeight: FontWeight.bold)),
                                    Text('test')
                                  ],
                                ),
                                SizedBox(height: 5,),
                                Container(
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(20)),
                                    color: Colors.blueGrey[900],
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(

                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(20)),
                                          color: Colors.blueGrey[900],
                                        ),
                                        child: Icon(
                                          Icons.star,
                                          size: 13,
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(' 90 pkt', style: TextStyle(color: Colors.white, fontSize: 10),)
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )

                        ],
                      ),
                    ),


                    Container(
                      padding: EdgeInsets.all(25),
                      margin: EdgeInsets.all(25),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.blueGrey[900],
                      ),
                      child: Column(
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                          color: Colors.white,
                                        ),
                                        child: Text('Lorem Ipsum', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)
                                    ),
                                    SizedBox(height: 8,),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.pie_chart,
                                          size: 24,
                                          color: Colors.green,
                                        ),

                                        SizedBox(height: 5),
                                        Text('  Percentage:', style: TextStyle(color: Colors.white, ),),

                                        Text('20%', style: TextStyle(color: Colors.white, ))
                                      ],
                                    )
                                  ],
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  size: 30,
                                  color: Colors.white,
                                ),
                              ]
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),

                    ConfettiReport(),
                    Carousel_Slider(),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(25, 15, 0, 2),
                      child: Align(alignment: Alignment.bottomLeft, child: Text('Mapa zowodow', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),)),
                    ),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(25, 4, 0, 2),
                      child: Align(child: Text('data test test'), alignment: Alignment.bottomLeft,),
                    ),

                    Container(
                      padding: const EdgeInsets.fromLTRB(25, 4, 0, 2),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: GestureDetector(
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                            margin: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                color: Colors.blueAccent
                            ),
                            child: Text('Button click here', style: TextStyle(color: Colors.white),),
                          ),
                        ),
                      ),
                    ),


                  ],
                ),
              ),

              ScribbleSlider()
            ],
          ),
        ),
      ),
      backgroundColor: Colors.blueGrey[900],
    );
  }
}

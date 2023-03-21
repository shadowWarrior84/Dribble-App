import 'dart:ui';

import 'package:dribbble_app/utils/emoticon_face.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade800,

      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
      ]),

      body: SafeArea(
        
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Hi, Javed!", style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold ),),
                          SizedBox(
                            height: 8,
                          ),
                          Text("23rd Jan, 2023", style: TextStyle(color: Colors.blue.shade200),)

                        ],
                      ),

                      Container(
                        decoration: BoxDecoration(
                          color: Colors.blue.shade600,
                          borderRadius: BorderRadius.circular(12)
                        ),
                        padding: EdgeInsets.all(16),
                        child: Icon(Icons.notifications, color: Colors.white,),
                      )
                    ],

                  ),

                  SizedBox(
                    height: 25,
                  ),

                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue.shade600,
                      borderRadius: BorderRadius.circular(12)
                    ),
                    padding: const EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Icon(Icons.search, color: Colors.white,),

                        SizedBox(width: 5,),

                        Text("Search", style: TextStyle(color: Colors.white),)
                      ],

                    ),
                  ),

                  SizedBox(
                    height: 25,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("How do you Feeling?", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),

                      Icon(Icons.more_horiz, color: Colors.white,)
                    ],
                  ),

                  SizedBox(
                    height: 25,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          EmoticonFace(emoticonFace: "😫",),

                          SizedBox(height: 8,),

                          Text("Bad", style: TextStyle(color: Colors.white),)
                        ],
                      ),
                      Column(
                        children: [
                          EmoticonFace(emoticonFace: "🙂",),

                          SizedBox(height: 8,),

                          Text("Fine", style: TextStyle(color: Colors.white),)
                        ],
                      ),

                      Column(
                        children: [
                          EmoticonFace(emoticonFace: "😀"),

                          SizedBox(height: 8,),

                          Text("Well", style: TextStyle(color: Colors.white),)
                        ],
                      ),

                      Column(
                        children: [
                          EmoticonFace(emoticonFace: "😁"),

                          SizedBox(height: 8,),

                          Text("Excellent", style: TextStyle(color: Colors.white),)
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 25,
            ),

            Expanded(
              child: Container(
                padding: const EdgeInsets.all(25),
                color: Colors.grey.shade300,

                child: Center(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Exercises", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                          Icon(Icons.more_horiz)
                        ],
                      ),

                      SizedBox(
                        height: 20,
                      ),

                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: Container(
                                      padding: const EdgeInsets.all(16),
                                      color: Colors.orange,
                                      child: Icon(Icons.favorite, color: Colors.white,)
                                    ),
                                ),

                                SizedBox(
                                      width: 12
                                    ),

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Speaking Skills", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),

                                    SizedBox(height: 5,),

                                    Text("16 Exercises", style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey, fontSize: 14),)
                                  ],
                                ),
                              ],
                            ),

                            Icon(Icons.more_horiz)
                          ],
                        )
                      )
                    ],
                  ),
                ),
              ),
            )

          ],
        )
      ),
    );
  }
}
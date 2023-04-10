import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io' as io;
// import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

import 'colors/colors.dart';


class Movements extends StatefulWidget {
  const Movements({super.key});

  @override
  State<Movements> createState() => _MovementsState();
}

class _MovementsState extends State<Movements> {

   void changeScreenDialog() {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          
          height: 220.0,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.yellow,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.grey
        ),
          padding: EdgeInsets.all(20),
          child: Column(
            
            children: [
              Row(
                children: [
                  Icon(Icons.edit,color: Colors.white,),
                  SizedBox(width: 10,),
                  Text("Edit")
                ],
              ),
               Row(
                children: [
                  Icon(Icons.add_box_outlined,color: Colors.white,),
                  SizedBox(width: 10,),
                  Text("Delete")
                ],
              ),
               Row(
                children: [
                  Icon(Icons.copy,color: Colors.white,),
                  SizedBox(width: 10,),
                  Text("Copy")
                ],
              ),
               Row(
                children: [
                  Icon(Icons.image,color: Colors.white,),
                  SizedBox(width: 10,),
                  Text("Show Images")
                ],
              ),
               
              // Container(
              //   height: 20,
                
              //   child: Icon(Icons.help,size: 30,color: Colors.yellow,)),
              //   SizedBox(height: 20,),
              // Text('Change to PRO mode?',style: TextStyle(color: Colors.white),),
              // SizedBox(height: 20),
              // Row(
              //   children: [
              //     GestureDetector(
              //       onTap: () {
              //        // Navigator.push(context, MaterialPageRoute(builder: (context)=>HomesCREEN2()));
              //       },
              //       child: Container(
              //         height: 40,
              //         width: 130,
              //         decoration: BoxDecoration(
              //           borderRadius: BorderRadius.circular(10),
              //           gradient: lGradient
              //         ),
              //         child: Center(child: Text("Yes",style: TextStyle(color: Colors.white),)),
              //       ),
              //     ),
              //     Spacer(),
              //      GestureDetector(
              //       onTap: () {
              //         Navigator.of(context).pop();
              //       },
              //         child: Container(
              //         height: 40,
              //         width: 130,
              //         decoration: BoxDecoration(
              //           borderRadius: BorderRadius.circular(10),
              //           gradient: lGradient
              //         ),
              //         child: Center(child: Text("No",style: TextStyle(color: Colors.white),)),
              //       ),
              //      ),
              //   ],
              // ),
            ],
          ),
        ),
      );
    },
  );
}


  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white12,
      appBar: AppBar(
        backgroundColor: Colors.white10,
        title: Text(
          "Movements",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Container(
            child: Column(
              children: [
                Text(
                  "Cash",
                  style: TextStyle(color: Colors.white),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 40,
                    ),
                    Icon(
                      Icons.share,
                      color: Colors.white,
                      size: 40,
                    ),
                    Icon(
                      Icons.arrow_upward,
                      color: Colors.white,
                      size: 40,
                    ),
                    Icon(
                      Icons.add,
                      color: Colors.green,
                      size: 40,
                    ),
                    Icon(
                      Icons.remove,
                      color: Colors.red,
                      size: 40,
                    ),
                    Expanded(
                      child: Container(
                        height: 30,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.grey),
                        child: Row(
                          children: [
                            Text("All"),
                            Spacer(),
                            Icon(Icons.arrow_drop_down)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white),
                        child: Row(
                          children: [
                            Text("March"),
                            Spacer(),
                            Icon(Icons.arrow_drop_down)
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.white),
                        child: Row(
                          children: [
                            Text("2023"),
                            Spacer(),
                            Icon(Icons.arrow_drop_down)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(""),
                Text(
                  "3 March 2023, 04:47 pm",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
          // Row(
          //   children: [
          //     Column(
          //       children: [
          //         Container(
          //           height: 70,
          //           width: 70,
          //           decoration: BoxDecoration(
          //             color: Colors.black,
          //             image: DecorationImage(
          //                 image: AssetImage('assets/images/main_image.png')),
          //           ),
          //         ),
          //       ],
          //     ),
          //     Column(
          //       children: [
                 
          //             Expanded(
          //               flex: 1,
          //               child: Container(
          //                 height: 25,
          //                 color: Colors.blue,
          //                 child: Text("cash"),
          //               ),
          //             ),
                    
                  
          //             Expanded(
          //               flex: 1,
          //               child: Container(
          //                 height: 25,
          //                 color: Colors.blue,
          //                 child: Row(
          //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //                   children: [
          //                     Text("Salary"),
          //                     Spacer(),
          //                     Row(
          //                       children: [
          //                         Text("20,000"),
          //                         Icon(
          //                           Icons.add,
          //                           color: Colors.green,
          //                         ),
          //                       ],
          //                     ),
          //                   ],
          //                 ),
          //               ),
          //             ),
                   
          //         Row(
          //           children: [
          //             Expanded(
          //               flex: 1,
          //               child: Container(
          //                 height: 25,
          //                 color: Colors.blue,
          //                 child: Text("Added"),
          //               ),
          //             ),
          //           ],
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
          GestureDetector(
            onTap: () {
               changeScreenDialog();
            },
            child: Row(
            children: <Widget>[
              
                
                 Container(
                  color: Colors.black,
                  width: 70,
                  height: 70,
                  child: Image.asset('assets/images/main_image.png'),
                ),
              
              Expanded(
                flex: 2,
                child: Column(
                  children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    height: 25,
                     color: Colors.blue,
                             child: Text("cash"),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    height: 25,
                    color: Colors.blue,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Salary"),
                                Spacer(),
                                Row(
                                  children: [
                                    Text("20,000"),
                                    Icon(
                                      Icons.add,
                                      color: Colors.green,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    height: 25,
                    color: Colors.blue,
                             child: Text("Added"),
                  ),
                ),
              ],
            ),
                  ],
                ),
              ),
            ],
          ),
          ),

           Divider(
            color: Colors.white,
            height: 3,
          )
        ],
      ),
    );
  }
}

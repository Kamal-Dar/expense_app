import 'package:expense_app/screens/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:async';
import 'dart:io' as io;

// import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

import '../database/db_handler.dart';
import '../main.dart';

class FrequentRecods extends StatefulWidget {
  const FrequentRecods({super.key});

  @override
  State<FrequentRecods> createState() => _FrequentRecodsState();
}

class _FrequentRecodsState extends State<FrequentRecods> {
  bool _isOn = false;
  TextEditingController descriptionController = TextEditingController();
  TextEditingController valueController = TextEditingController();

  List<String> dataList = [];
  late int selectedRadio;
  bool isValueEntered = false;

  void _toggle() {
    setState(() {
      _isOn = !_isOn;
    });
  }

  void repeatRecordDialog(BuildContext context) {
    showDialog(
        context: context,
        barrierColor: Colors.grey.withOpacity(0.5),
        builder: (context) {
          selectedRadio = -1;
          return StatefulBuilder(builder: (context, setState) {
            return Center(
              child: Container(
                height: 600,
                // ignore: sort_child_properties_last
                child: SizedBox.expand(
                  child: Scaffold(
                    backgroundColor: Colors.transparent,
                    body: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Theme(
                            data: Theme.of(context).copyWith(
                              unselectedWidgetColor: Colors.grey,
                              disabledColor: Colors.grey,
                            ),
                            child: RadioListTile(
                              value: 0,
                              groupValue: selectedRadio,
                              title: Text("Repeat Daily",
                                  style: TextStyle(color: Colors.white)),
                              onChanged: (dynamic val) {
                                setState(() {
                                  selectedRadio = val;
                                });
                              },
                              activeColor: Colors.white,
                            ),
                          ),
                          Theme(
                            data: Theme.of(context).copyWith(
                              unselectedWidgetColor: Colors.grey,
                              disabledColor: Colors.grey,
                            ),
                            child: RadioListTile(
                              value: 1,
                              groupValue: selectedRadio,
                              title: Text("Repeat weekly",
                                  style: TextStyle(color: Colors.white)),
                              onChanged: (dynamic val) {
                                setState(() {
                                  selectedRadio = val;
                                });
                              },
                              activeColor: Colors.white,
                            ),
                          ),
                          Theme(
                            data: Theme.of(context).copyWith(
                              unselectedWidgetColor: Colors.grey,
                              disabledColor: Colors.grey,
                            ),
                            child: RadioListTile(
                              value: 3,
                              groupValue: selectedRadio,
                              title: Text("Repeat fortnightly",
                                  style: TextStyle(color: Colors.white)),
                              onChanged: (dynamic val) {
                                setState(() {
                                  selectedRadio = val;
                                });
                              },
                              activeColor: Colors.white,
                            ),
                          ),
                          Theme(
                            data: Theme.of(context).copyWith(
                              unselectedWidgetColor: Colors.grey,
                              disabledColor: Colors.grey,
                            ),
                            child: RadioListTile(
                              value: 4,
                              groupValue: selectedRadio,
                              title: Text("Repeat monthly",
                                  style: TextStyle(color: Colors.white)),
                              onChanged: (dynamic val) {
                                setState(() {
                                  selectedRadio = val;
                                });
                              },
                              activeColor: Colors.white,
                            ),
                          ),
                          Theme(
                            data: Theme.of(context).copyWith(
                              unselectedWidgetColor: Colors.grey,
                              disabledColor: Colors.grey,
                            ),
                            child: RadioListTile(
                              value: 5,
                              groupValue: selectedRadio,
                              title: Text("Repeat quartly",
                                  style: TextStyle(color: Colors.white)),
                              onChanged: (dynamic val) {
                                setState(() {
                                  selectedRadio = val;
                                });
                              },
                              activeColor: Colors.white,
                            ),
                          ),
                          Theme(
                            data: Theme.of(context).copyWith(
                              unselectedWidgetColor: Colors.grey,
                              disabledColor: Colors.grey,
                            ),
                            child: RadioListTile(
                              value: 6,
                              groupValue: selectedRadio,
                              title: Text("Repeat semiannually",
                                  style: TextStyle(color: Colors.white)),
                              onChanged: (dynamic val) {
                                setState(() {
                                  selectedRadio = val;
                                });
                              },
                              activeColor: Colors.white,
                            ),
                          ),
                          Theme(
                            data: Theme.of(context).copyWith(
                              unselectedWidgetColor: Colors.grey,
                              disabledColor: Colors.grey,
                            ),
                            child: RadioListTile(
                              value: 7,
                              groupValue: selectedRadio,
                              title: Text("Repeat annually",
                                  style: TextStyle(color: Colors.white)),
                              onChanged: (dynamic val) {
                                setState(() {
                                  selectedRadio = val;
                                });
                              },
                              activeColor: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    gradient: lGradient,
                    borderRadius: BorderRadius.circular(10)),
              ),
            );
          });
        });
  }

  void attentionDialog() {
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
                color: Colors.grey),
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                    height: 40,
                    width: double.infinity,
                    color: Colors.black,
                    child: Center(
                        child: Text(
                      'Attention',
                      style: TextStyle(color: Colors.white),
                    ))),
                SizedBox(height: 10),
                Container(
                    height: 20,
                    child: Icon(
                      Icons.warning,
                      size: 30,
                      color: Colors.yellow,
                    )),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Enter a valid amount.',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 20),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    height: 40,
                    width: 130,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: lGradient),
                    child: Center(
                        child: Text(
                      "No",
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void alertnDialog(int id) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            height: 300.0,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.yellow,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.grey),
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                    height: 40,
                    width: double.infinity,
                    color: Colors.black,
                    child: Center(
                        child: Text(
                      'Confirm',
                      style: TextStyle(color: Colors.white),
                    ))),
                SizedBox(height: 10),
                Container(
                    height: 20,
                    child: Icon(
                      Icons.help,
                      size: 30,
                      color: Colors.yellow,
                    )),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Are you sure to remove this frequent',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  'operation?',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () async {
                        await deleteData(id);
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 40,
                        width: 130,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: lGradient),
                        child: Center(
                            child: Text(
                          "Yes",
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        height: 40,
                        width: 130,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: lGradient),
                        child: Center(
                            child: Text(
                          "No",
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void operationDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            height: 600.0,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.yellow,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.grey),
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                    height: 40,
                    width: double.infinity,
                    color: Colors.black,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Operation 5',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        GestureDetector(
                          onTap: _toggle,
                          child: Icon(
                            _isOn ? Icons.toggle_on : Icons.toggle_off,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                      ],
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 20.0,
                      backgroundColor: Colors.black,
                      child: Icon(Icons.add, color: Colors.white),
                    ),
                    CircleAvatar(
                      radius: 20.0,
                      backgroundColor: Colors.red,
                      child: Icon(Icons.remove, color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Container(
                  height: 30,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Repeat montly"),
                      GestureDetector(
                          onTap: () {
                            repeatRecordDialog(context);
                          },
                          child: Icon(Icons.arrow_drop_down))
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(""),
                    Row(
                      children: [
                        Text(
                          "Start:",
                          style: TextStyle(color: Colors.white),
                        ),
                        Container(
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                DateFormat('dd-MM-yyyy').format(DateTime.now()),
                              ),
                              Icon(Icons.arrow_drop_down)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(""),
                    Row(
                      children: [
                        Text(
                          "Repeat:",
                          style: TextStyle(color: Colors.white),
                        ),
                        Container(
                          height: 30,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Forver"),
                              Icon(Icons.arrow_drop_down)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(""),
                    Row(
                      children: [
                        Text(
                          "Each: ",
                          style: TextStyle(color: Colors.white),
                        ),
                        Container(
                          height: 30,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Day 1"),
                              Icon(Icons.arrow_drop_down)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(""),
                    Row(
                      children: [
                        Text(
                          "Amount:",
                          style: TextStyle(color: Colors.white),
                        ),
                        Container(
                          height: 30,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Expanded(
                                child: Center(
                                  child: TextField(
                                    onChanged: (value) {
                                      setState(() {
                                        isValueEntered = value.isNotEmpty;
                                        attentionDialog();
                                      });
                                    },
                                    controller: valueController,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      hintText: "0",
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(""),
                    Row(
                      children: [
                        Text(
                          "Category:",
                          style: TextStyle(color: Colors.white),
                        ),
                        Container(
                          height: 30,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Choose"),
                              Icon(Icons.arrow_drop_down)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextField(
                                controller: descriptionController,
                                decoration: InputDecoration(
                                    hintText: 'Write a brief description',
                                    hintStyle: TextStyle(color: Colors.grey)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          saveData(descriptionController.text,
                              int.parse(valueController.text));
                          descriptionController.clear();
                          valueController.clear();
                          if(valueController.text.isEmpty){
                            attentionDialog();
                          }
                        },
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                            gradient: lGradient,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              "Save",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                          gradient: lGradient,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            "close",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }

  void restartDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            height: 300.0,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.yellow,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.grey),
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                    height: 40,
                    width: double.infinity,
                    color: Colors.black,
                    child: Center(
                        child: Text(
                      'Confirm',
                      style: TextStyle(color: Colors.white),
                    ))),
                SizedBox(height: 10),
                Container(
                    height: 20,
                    child: Icon(
                      Icons.help,
                      size: 30,
                      color: Colors.yellow,
                    )),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'This action will activate theoperation \n and re-activate the schedulerecords \n\t\t\t\t\t Do you wish to',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        runApp(MyApp());
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        height: 40,
                        width: 130,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: lGradient),
                        child: Center(
                            child: Text(
                          "Yes",
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        height: 40,
                        width: 130,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: lGradient),
                        child: Center(
                            child: Text(
                          "No",
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void viewRecordDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            height: 600.0,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.yellow,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.grey),
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Container(
                    height: 40,
                    width: double.infinity,
                    color: Colors.black,
                    child: Center(
                        child: Text(
                      'Scheduled records',
                      style: TextStyle(color: Colors.white),
                    ))),
                Container(
                    height: 20,
                    width: double.infinity,
                    child: Center(
                        child: Text(
                      'This Operation is inactive',
                      style: TextStyle(color: Colors.white),
                    ))),
                SizedBox(height: 20),
                Container(
                  height: 400,
                  color: Colors.white,
                  width: double.infinity,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(""),
                    Container(
                      height: 20,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: Row(
                        children: [
                          Text("0.000"),
                          Text(
                            "=",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        runApp(MyApp());
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        height: 40,
                        width: 130,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: lGradient),
                        child: Center(
                            child: Text(
                          "Yes",
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        height: 40,
                        width: 130,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: lGradient),
                        child: Center(
                            child: Text(
                          "No",
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void showCutomDialog(int id) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            height: 220.0,
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.yellow,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.grey),
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    operationDialog();
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.edit,
                        size: 25,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Edit",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    alertnDialog(id);
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.delete_outline,
                        size: 25,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Delete",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    viewRecordDialog();
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.shop_outlined,
                        size: 25,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "View created records",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    restartDialog();
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.restart_alt_sharp,
                        size: 25,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Activate and restart",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
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
    final now = DateTime.now();
    final nextMonth = DateTime(now.year, now.month + 1, now.day);
    final formattedDate = DateFormat('dd-MM-yyyy').format(nextMonth);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.white10,
        title: Text(
          "Frequent recods",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  operationDialog();
                },
                child: Container(
                  height: 30,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      "New operation",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            color: Colors.white10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.add,
                      color: Colors.green,
                      size: 50,
                    ),
                    Text(
                      "opration 1",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Container(
                  height: 20,
                  width: 50,
                  color: Colors.green,
                  child: Text(
                    "Enable",
                  ),
                )
              ],
            ),
          ),
          Divider(
            color: Colors.white,
            height: 3,
          ),
          SizedBox(height: 16),
          Expanded(
            child: FutureBuilder<List<Map<String, dynamic>>>(
              future: getData(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  List<Map<String, dynamic>> data = snapshot.data!;
                  return ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (context, index) {
                      return SingleChildScrollView(
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                showCutomDialog(data[index]['id']);
                              },
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          height: 25,
                                          width: 100,
                                          color: Colors.blue,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "choose",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18),
                                              ),
                                              Text("10,000")
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
                                          height: 25,
                                          width: 100,
                                          color: Colors.blue,
                                          child:
                                              Text("Repeat monthly, forever"),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          height: 25,
                                          width: 100,
                                          color: Colors.blue,
                                          child: Row(
                                            children: [
                                              Text(
                                                  "start: ${DateFormat('dd-MM-yyyy').format(DateTime.now())}"),
                                              // Text("next: ${formattedDate}"),
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
                                          height: 25,
                                          width: 100,
                                          color: Colors.blue,
                                          child: Text(data[index]['name']),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Divider(
                                    color: Colors.white,
                                    height: 3,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  Future<int> saveData(String name, int value) async {
    var dbClient = await DBHelper().db;
    int res = await dbClient!.insert("mytable", {"name": name, "value": value});
    setState(() {
      //dataList.add();
    });
    return res;
  }

  Future<void> deleteData(int id) async {
    final db = await DBHelper().db;
    await db!.delete("mytable", where: 'id = ?', whereArgs: [id]);
  }

  Future<List<Map<String, dynamic>>> getData() async {
    var dbClient = await DBHelper().db;
    List<Map<String, dynamic>> list = await dbClient!.query("mytable");
    return list;
  }
}

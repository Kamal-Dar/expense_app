import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../database/db_handler.dart';
import 'colors/colors.dart';

class Reports extends StatefulWidget {
  const Reports({super.key});

  @override
  State<Reports> createState() => _ReportsState();
}

class _ReportsState extends State<Reports> {

  late int selectedRadio;

   void allRecordDialog(BuildContext context) {
    showDialog(
        context: context,
        barrierColor: Colors.grey.withOpacity(0.5),
        builder: (context) {
          selectedRadio = -1;
          return StatefulBuilder(builder: (context, setState) {
            return Center(
              child: Container(
                height: 300,
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
                              title: Text("All",
                                   style:  TextStyle(color: Colors.white)),
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
                              title: Text("Income",
                                   style:  TextStyle(color: Colors.white)),
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
                              title: Text("Expense",
                                   style:  TextStyle(color: Colors.white)),
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

void dailyRecordDialog(BuildContext context) {
    showDialog(
        context: context,
        barrierColor: Colors.grey.withOpacity(0.5),
        builder: (context) {
          selectedRadio = -1;
          return StatefulBuilder(builder: (context, setState) {
            return Center(
              child: Container(
                height: 500,
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
                              title: Text("By day",
                                   style:  TextStyle(color: Colors.white)),
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
                              title: Text("By period",
                                   style:  TextStyle(color: Colors.white)),
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
                              title: Text("Daily",
                                   style:  TextStyle(color: Colors.white)),
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
                              title: Text("Weekly",
                                   style:  TextStyle(color: Colors.white)),
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
                              title: Text("Biweekly",
                                   style:  TextStyle(color: Colors.white)),
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
                              title: Text("Monthly",
                                   style:  TextStyle(color: Colors.white)),
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
                              title: Text("Annual",
                                   style:  TextStyle(color: Colors.white)),
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
              
               Container(
                height: 40,
                width: double.infinity,
                color: Colors.black,
                child: Center(child: Text('Confirm', style: TextStyle(color: Colors.white),))),
              SizedBox(height: 10),
              Container(
                height: 20,
                
                child: Icon(Icons.help,size: 30,color: Colors.yellow,)),
                SizedBox(height: 20,),
              Text('Change to PRO mode?',style: TextStyle(color: Colors.white),),
              SizedBox(height: 20),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context)=>HomesCREEN2()));
                    },
                    child: Container(
                      height: 40,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: lGradient
                      ),
                      child: Center(child: Text("Yes",style: TextStyle(color: Colors.white),)),
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
                        gradient: lGradient
                      ),
                      child: Center(child: Text("No",style: TextStyle(color: Colors.white),)),
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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white12,
      appBar: AppBar(
        backgroundColor: Colors.white10,
        title: Text(
          "Reports by date",
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
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          allRecordDialog( context);
                        },
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
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          dailyRecordDialog( context);
                        },
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
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
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
          SingleChildScrollView(
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                //showCutomDialog(data[index]['id']);
                                
                              },
                              child: Column(
                                          children: [
                                            
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
          Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 25,
                      width: 100,
                      color: Colors.blue,
                      child: Text("cash"),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 15,
                      width: 100,
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
                children: [
                  Expanded(
                    child: Container(
                      height: 15,
                      width: 100,
                      color: Colors.blue,
                      child: Text("Added"),
                    ),
                  ),
                ],
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
                      ),
                      

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
                                //showCutomDialog(data[index]['id']);
                                
                              },
                              child: Column(
                                          children: [
                                            
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
          Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 25,
                      width: 100,
                      color: Colors.blue,
                      child: Text("cash"),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 15,
                      width: 100,
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
                children: [
                  Expanded(
                    child: Container(
                      height: 15,
                      width: 100,
                      color: Colors.blue,
                      child: Text("Added"),
                    ),
                  ),
                ],
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
        
         Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 100,
                width: double.infinity,
                color: Colors.white10,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.graphic_eq_outlined,
                          color: Colors.white,
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.abc_outlined,
                          color: Colors.white,
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                                height: 30,
                                width: 300,
                                decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white,
                                      ),
                                child: Row(
                                  children: [
                                    Text("25000"),
                                    Spacer(),
                                    Icon(
                                      Icons.add,
                                      color: Colors.green,
                                    )
                                  ],
                                )
                                ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                                height: 30,
                                width: 300,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("68000"),
                                    Icon(
                                      Icons.remove,
                                      color: Colors.red,
                                    )
                                  ],
                                )),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                                height: 30,
                                width: 300,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("24000"),
                                    Text("=",style: TextStyle(color: Colors.blue),)
                                  ],
                                )),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

   Future<int> saveData(String name, int value) async {
    var dbClient = await DBHelper().db;
    int res = await dbClient!.insert("mytable2", {"name": name, "value": value});
    setState(() {
       //dataList.add();
    });
    return res;
  }

  Future<void> deleteData(int id) async {
  final db =await DBHelper().db;
  await db!.delete("mytable2", where: 'id = ?', whereArgs: [id]);
  
}

  Future<List<Map<String, dynamic>>> getData() async {
    var dbClient = await DBHelper().db;
    List<Map<String, dynamic>> list = await dbClient!.query("mytable2");
    return list;
  }
}

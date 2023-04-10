import 'dart:io';

import 'package:expense_app/screens/Icon_screen.dart';
import 'package:expense_app/screens/add_expense.dart';
import 'package:expense_app/screens/home-screen_2.dart';
import 'package:expense_app/screens/reports.dart';
import 'package:expense_app/screens/settings.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'add_ncome.dart';
import 'colors/colors.dart';
import 'frequent_records.dart';
import 'movemnts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  double income=0.00;
  double expense=0.00;
  double priviosblnc=0.00;
  double currentblc=0.00;

  @override
  void initState() {
    super.initState();
    //print("video id is" + videoId.toString());
    getCredentials();
   
    
    
  }

 
//   Future<double> getIncome() async {
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//    setState(() {
//      income = prefs.getDouble('income') ?? 0.0;
//    });
//   return income;
// }
void getCredentials() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      income = prefs.getDouble('income') ?? 0.00;
      expense = prefs.getDouble('expense') ?? 0.00;
      print("income in home is $income" );
      print("expense in home is $expense" );
      currentblc=income-expense;
     
      //username = prefs.getString('username') ?? '';
      
     // fetchuserVideo();
    });
  }




   void powerDialog() {
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
              Text('Exit the application?',style: TextStyle(color: Colors.white),),
              SizedBox(height: 20),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                     exit(0);
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
 
 void CustomDialog() {
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
          color: Colors.grey
        ),
          padding: EdgeInsets.all(20),
          child: Column(
            
            children: [
              
               Container(
                height: 40,
                width: double.infinity,
                color: Colors.black,
                child: Center(child: Text('Abou the Application', style: TextStyle(color: Colors.white),))),
              SizedBox(height: 10),
              Container(
                height: 20,
                
                child: Image.asset("assets/images/main_image.png")),
                SizedBox(height: 20,),
              Text('Daily Epenses\n\t\t\t2.614.G-Free',style: TextStyle(color: Colors.white),),
              Text('This is an application developed by: \n\t\t\t\t Michel Carvajal',style: TextStyle(color: Colors.white),),
              Text('<encode mx>',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
              Text('<www.encodemx.com>',style: TextStyle(color: Colors.purple,fontSize: 20,fontWeight: FontWeight.bold),),
              Text('if you notice an error in translation,an \n incpotibility with your device, or any problem \n the application , please notify this email: \n support@encodemx.com \n\n available transltion in Spanish, Englis,\n Portugese, French, German, Rusian, chinese, \n Italian,Indonesian, Ukrainian,Korian, catalian \n\t\t\t\t\t\t Romanian',style: TextStyle(color: Colors.white,),),
              
              SizedBox(height: 20),
              
                  GestureDetector(
                    onTap: () {
                     Navigator.pop(context);
                    },
                    child: Container(
                      height: 40,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: lGradient
                      ),
                      child: Center(child: Text("Accept",style: TextStyle(color: Colors.white),)),
                    ),
                  ),
                  
              
            ],
          ),
        ),
      );
    },
  );
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
              Text('Change to Free mode?',style: TextStyle(color: Colors.white),),
              SizedBox(height: 20),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen2()));
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
        title: Row(
          children: <Widget>[
            Image.asset(
              'assets/images/main_image.png', // Replace this with your image path
              height: 30, // Adjust the height as needed
            ),
            SizedBox(width: 50), // Add some space between the image and text
            Text(
              'My Expense', // Replace this with your app name
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8, top: 10),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>AddIncome(income: "amount", description: '')));
                  },
                  child: Container(
                    height: 80,
                    width: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: lGradient),
                    child: Column(
                      children: [
                        Container(
                            margin: EdgeInsets.only(top: 5),
                            height: 40,
                            width: 70,
                            child: Image.asset("assets/images/add_income.png")),
                        Text(
                          "Add income",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
                Spacer(),
                GestureDetector(
                 onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>AddExpense(description: '', expence: expense,)));
                  },
                  child: Container(
                    height: 80,
                    width: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: lGradient),
                    child: Column(
                      children: [
                        Container(
                            margin: EdgeInsets.only(top: 5),
                            height: 40,
                            width: 70,
                            child: Image.asset("assets/images/add_expense.png")),
                        Text(
                          "Add expense",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8, top: 10),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Movements()));
                  },
                  child: Container(
                    height: 80,
                    width: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: lGradient),
                    child: Column(
                      children: [
                        Container(
                            margin: EdgeInsets.only(top: 5),
                            height: 40,
                            width: 70,
                            child: Image.asset("assets/images/movements.png")),
                        Text(
                          "Movements",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
                Spacer(),
                Builder(
                  builder: (context) {
                    return GestureDetector(
                      onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Reports()));
                  },
                      child: Container(
                        height: 80,
                        width: 180,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: lGradient),
                        child: Column(
                          children: [
                            Container(
                                margin: EdgeInsets.only(top: 5),
                                height: 40,
                                width: 70,
                                child: Image.asset(
                                    "assets/images/reports_category.png")),
                            Text(
                              "Reports by date",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    );
                  }
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8, top: 10),
            child: Row(
              children: [
                GestureDetector(
                   onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>FrequentRecods()));
                  },
                  child: Container(
                    height: 80,
                    width: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: lGradient),
                    child: Column(
                      children: [
                        Container(
                            margin: EdgeInsets.only(top: 5),
                            height: 40,
                            width: 70,
                            child: Image.asset("assets/images/callender.png")),
                        Text(
                          "Frequent records",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
                Spacer(),
                GestureDetector(
                   onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Settings()));
                  },
                  child: Container(
                    height: 80,
                    width: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: lGradient),
                    child: Column(
                      children: [
                        Container(
                            margin: EdgeInsets.only(top: 5),
                            height: 40,
                            width: 70,
                            child: Icon(
                              Icons.settings,
                              color: Colors.white,
                            )),
                        Text(
                          "Settings",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 8, right: 8),
            child: Container(
              color: Colors.white10,
              child: Column(
                children: [
                  Container(
                    color: Colors.white24,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "${DateFormat('MMMM').format(DateTime.now())} + Previous balnce",
                          style: TextStyle(color: Colors.white),
                        ),
                        Icon(
                          Icons.settings,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  Row(
                    children: [
                      Center(
                          child: Text(
                        "Income:",
                        style: TextStyle(color: Colors.white),
                      )),
                      Spacer(),
                      Row(
                        children: [
                          Text(
                            income.toString(),
                            style: TextStyle(color: Colors.white),
                          ),
                          Column(
                            children: [
                              Icon(
                                Icons.add,
                                color: Colors.green,
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Previous balance:",
                        style: TextStyle(color: Colors.white),
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Text(
                            priviosblnc.toString(),
                            style: TextStyle(color: Colors.white),
                          ),
                          Icon(
                            Icons.add,
                            color: Colors.green,
                          )
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Expense:",
                        style: TextStyle(color: Colors.white),
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Text(
                            expense.toString(),
                            style: TextStyle(color: Colors.white),
                          ),
                          Icon(
                            Icons.remove,
                            color: Colors.red,
                          )
                        ],
                      ),
                    ],
                  ),
                  Divider(color: Colors.black,),
                  Row(
                    children: [
                      Text(
                        "Current balance:",
                        style: TextStyle(color: Colors.white),
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Text(
                            currentblc.toString(),
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            "=",
                            style: TextStyle(color: Colors.blue, fontSize: 20),
                          )
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(""),
                      Spacer(),
                      Text(
                        "calculated with: USD",
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 80,top: 10,right: 80),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        changeScreenDialog();
                      },
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/icons/check.png'),
                        radius: 25, // adjust the size of the avatar
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>IconScreen()));
                      },
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/icons/shopping.png'),
                        radius: 25, // adjust the size of the avatar
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        CustomDialog();
                      },
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/icons/info.png'),
                        radius: 25, // adjust the size of the avatar
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {
                        powerDialog();
                      },
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/icons/power.png'),
                        radius: 25, // adjust the size of the avatar
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: 30,
                width: 125,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF880808),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 3,left: 5),
                  child: Text("Get PRO License",style: TextStyle(color: Colors.white),),
                ))
            ],
          ),
        ],
      ),
    );
  }
}

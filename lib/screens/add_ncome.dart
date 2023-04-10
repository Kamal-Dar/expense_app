import 'dart:async';

import 'package:expense_app/screens/colors/colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:table_calendar/table_calendar.dart';

import '../extra_helper/calculator.dart';
import '../extra_helper/clock.dart';

class AddIncome extends StatefulWidget {
  final String income;
  
  final String description;

  const AddIncome({super.key, required this.income,  required this.description});

  @override
  State<AddIncome> createState() => _AddIncomeState();
}

class _AddIncomeState extends State<AddIncome> {

   Timer?_timer;
   String?_timeString;
   CalendarFormat _calendarFormat = CalendarFormat.month;
    DateTime _selectedDay = DateTime.now();
  DateTime _focusedDay = DateTime.now();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
   

  TextEditingController incomeController=TextEditingController();
  TextEditingController descriptionController=TextEditingController();
  String dropdownValue = 'Loan 1';

 List<AddIncome> incomes = [];

// void saveIncome(double amount,  String description)  async {
//   SharedPreferences prefs = await SharedPreferences.getInstance();
//   AddIncome income = AddIncome(income: "amount", description: description);
//   incomes.add(income);

  
// }
Future<void> saveCredentials(double income,  String incomedescription ) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    
    print("Preference income:===> " + income.toString());
    prefs.setDouble('income', income.toDouble());
    prefs.setString('description', incomedescription.toString());
    
  }


  @override
  void initState() {
    super.initState();
    _timeString = _formatDateTime(DateTime.now());
    _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      setState(() {
        _timeString = _formatDateTime(DateTime.now());
      });
    });
  }

  @override
  void dispose() {
    _timer!.cancel();
    super.dispose();
  }

  String _formatDateTime(DateTime dateTime) {
    return DateFormat('hh:mm a').format(dateTime);
  }

  void _showCalendarDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: TableCalendar(
            calendarFormat: _calendarFormat,
            selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
            onDaySelected: (selectedDay, focusedDay) {
              setState(() {
                _selectedDay = selectedDay;
                _focusedDay = focusedDay;
              });
            },
            onFormatChanged: (format) {
              setState(() {
                _calendarFormat = format;
              });
            },
            focusedDay: _focusedDay,
            firstDay: DateTime.utc(2010, 1, 1),
            lastDay: DateTime.utc(2030, 12, 31),
            startingDayOfWeek: StartingDayOfWeek.monday,
            calendarStyle: CalendarStyle(
              selectedDecoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
            ),
          ),
        );
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      appBar: AppBar(
        backgroundColor: Colors.white10,
        title: Text(
          "Add income",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "income",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 20.0,
                      backgroundColor: Color.fromRGBO(76, 175, 80, 1),
                      child: Icon(Icons.add, color: Colors.white),
                    ),
                    SizedBox(width: 10.0),
                    Expanded(
                      child: TextField(
                        controller: incomeController,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(width: 10.0),
                    GestureDetector(
                      onTap: () {
                        showDialog(
            context: context,
            builder: (BuildContext context) {
              return const CalculatorDialog();
            },
          );
                      },
                      child: Icon(Icons.calculate_outlined)),
                  ],
                ),
              )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Category:",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Container(
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Row(
                children: [
                  CircleAvatar(
                    child: Icon(Icons.help, color: Colors.blueGrey),
                  ),
                  SizedBox(width: 10.0),
                  Expanded(child: Text("Choose a category")),
                  SizedBox(width: 10.0),
                  DropdownButton<String>(
  value: dropdownValue,
  onChanged: (String? newValue) {
    setState(() {
      dropdownValue = newValue!;
    });
  },
  items: <String>['Loan 1', 'Sallary', 'sales']
      .map<DropdownMenuItem<String>>((String value) {
    return DropdownMenuItem<String>(
      value: value,
      child: Text(value),
    );
  }).toList(),
)
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Description:",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Container(
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: TextField(
                controller: descriptionController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 8,right: 8),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    _showCalendarDialog(context);
                  },
                  child: Container(
                    height: 40,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Text( DateFormat('dd-MM-yyyy').format(DateTime.now()),),
                        Spacer(),
                        Icon(Icons.arrow_drop_down)
                      ],
                    ),
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const AnalogClockDialog();
      },
    );
                  },
                  child: Container(
                    height: 40,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Row(
                      children: [
                        Text( _timeString!,),
                        Spacer(),
                        Icon(Icons.arrow_drop_down)
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 8,right: 8),
            child: Row(
              children: [
                Container(
                  height: 40,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: lGradient
                  ),
                  child: Row(
                    children: [
                      
                      Icon(Icons.menu_book_outlined,color: Colors.green,),
                      Spacer(),
                      Text("Income \n Catecories",style: TextStyle(color: Colors.white),),
                      Spacer(),
                    ],
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    print("your income is "+incomeController.text.toString());
                    saveCredentials(double.parse(incomeController.text),descriptionController.text.toString(),);
                  },
                  child: Container(
                    height: 40,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: lGradient
                    ),
                   child: Row(
                      children: [
                        
                        Icon(Icons.check,color: Colors.green,),
                        Spacer(),
                        Text("Save",style: TextStyle(color: Colors.white),),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 5,),
          Row(
            
            children: [
              Text(""),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Row(
                  children: [
                    Container(
                      height: 30,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: lGradient,
                      ),
                      child: Icon(Icons.camera,color: Colors.blue,),
                    ),
                    SizedBox(width: 5,),
                     Container(
                      height: 30,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: lGradient,
                      ),
                      child: Icon(Icons.browse_gallery,color: Colors.blue,),
                    ),
                  ],
                ),
              )
            ],
          ),
        
        ],
      ),
    );
  }
}


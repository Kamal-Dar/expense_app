import 'package:flutter/material.dart';

import 'colors/colors.dart';
import 'currencies.dart';
import 'edit_category.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  int? selectedRadio;
  int? _selectedRadio;
  int? electedRadio;

  bool _toggleValue = false;
  bool toggleValue = false;
  bool _tooggleValue = false;
  bool tooggleValue = false;
  bool _isCheckedvalue1 = false;
  bool _isCheckedvalue2 = false;
  bool _isCheckedvalue3 = false;
  bool _isCheckedvalue4 = false;
  bool _isCheckedvalue5 = false;
  bool _isCheckedvalue6 = false;
  bool _isCheckedvalue7 = false;
  bool _isCheckedvalue8 = false;
  bool _isCheckedvalue9 = false;
  bool _isCheckedvalue10 = false;
  bool _isCheckedvalue11 = false;
  bool _isCheckedvalue12 = false;
  bool _isCheckedvalue13 = false;
  bool _isCheckedvalue14 = false;
  bool _isCheckedvalue15 = false;

  void showdateTimeDialog(BuildContext context) {
    showDialog(
        context: context,
        barrierColor: Colors.grey.withOpacity(0.5),
        builder: (context) {
          selectedRadio = -1;
          return StatefulBuilder(builder: (context, setState) {
            return Center(
              child: Container(
                height: 700,
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
                          Container(
                            height: 30,
                            width: double.infinity,
                            color: Colors.black,
                            child: Center(
                                child: Text(
                              "Date format",
                              style: TextStyle(color: Colors.white),
                            )),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Theme(
                            data: Theme.of(context).copyWith(
                              unselectedWidgetColor: Colors.grey,
                              disabledColor: Colors.grey,
                            ),
                            child: RadioListTile(
                              value: 0,
                              groupValue: selectedRadio,
                              title: Text("dd/mm/yyyy",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.white)),
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
                              title: Text("mm/dd/yyyy",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.white)),
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
                              value: 2,
                              groupValue: selectedRadio,
                              title: Text("yyyy/mm/dd",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.white)),
                              onChanged: (dynamic val) {
                                setState(() {
                                  selectedRadio = val;
                                });
                              },
                              activeColor: Colors.white,
                            ),
                          ),
                          Container(
                            height: 30,
                            width: double.infinity,
                            color: Colors.black,
                            child: Center(
                                child: Text(
                              "Time format",
                              style: TextStyle(color: Colors.white),
                            )),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Theme(
                            data: Theme.of(context).copyWith(
                              unselectedWidgetColor: Colors.grey,
                              disabledColor: Colors.grey,
                            ),
                            child: RadioListTile(
                              value: -1,
                              groupValue: _selectedRadio,
                              title: Text("12:00 pm",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.white)),
                              onChanged: (dynamic val) {
                                setState(() {
                                  _selectedRadio = val;
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
                              value: 0,
                              groupValue: _selectedRadio,
                              title: Text("24:00 hrs",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.white)),
                              onChanged: (dynamic val) {
                                setState(() {
                                  _selectedRadio = val;
                                });
                              },
                              activeColor: Colors.white,
                            ),
                          ),
                          Container(
                            height: 30,
                            width: double.infinity,
                            color: Colors.black,
                            child: Center(
                                child: Text(
                              "First day of week",
                              style: TextStyle(color: Colors.white),
                            )),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Theme(
                            data: Theme.of(context).copyWith(
                              unselectedWidgetColor: Colors.grey,
                              disabledColor: Colors.grey,
                            ),
                            child: RadioListTile(
                              value: -1,
                              groupValue: electedRadio,
                              title: Text("Sunday",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.white)),
                              onChanged: (dynamic val) {
                                setState(() {
                                  electedRadio = val;
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
                              value: 0,
                              groupValue: electedRadio,
                              title: Text("Monday",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.white)),
                              onChanged: (dynamic val) {
                                setState(() {
                                  electedRadio = val;
                                });
                              },
                              activeColor: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 50, right: 50, top: 5, bottom: 5),
                            child: GestureDetector(
                              onTap: () async {
                                if (selectedRadio == 0) {
                                  //_captureImage();
                                  print(
                                      "context is  ++++" + context.toString());
                                } else if (selectedRadio == 1) {
                                  // _pickImage();
                                }
                                Navigator.of(context).pop();
                              },
                              child: Container(
                                height: 35,
                                decoration: BoxDecoration(
                                    color: Colors.blueAccent,
                                    borderRadius: BorderRadius.circular(30)),
                                child: Center(
                                    child: Text("Accept",
                                        style: TextStyle(color: Colors.white))),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.yellow,
                      width: 2.0,
                    ),
                    gradient: lGradient,
                    borderRadius: BorderRadius.circular(10)),
              ),
            );
          });
        });
  }

  void showTransfersDialog(BuildContext context) {
    showDialog(
        context: context,
        barrierColor: Colors.grey.withOpacity(0.5),
        builder: (context) {
          selectedRadio = -1;
          return StatefulBuilder(builder: (context, setState) {
            return Center(
              child: Container(
                height: 450,
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
                          Container(
                            height: 30,
                            width: double.infinity,
                            color: Colors.black,
                            child: Center(
                                child: Text(
                              "Transfers",
                              style: TextStyle(color: Colors.white),
                            )),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Center(
                              child: Text(
                            "Enable or disable transfers of reports",
                            style: TextStyle(color: Colors.white),
                          )),
                          Center(
                              child: Text(
                            "and summaries",
                            style: TextStyle(color: Colors.white),
                          )),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [Text("")],
                              ),
                              Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'For reports by date ',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Switch(
                                      value: _toggleValue,
                                      onChanged: (value) {
                                        setState(() {
                                          _toggleValue = value;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [Text("")],
                              ),
                              Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'For reports by category ',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Switch(
                                      value: toggleValue,
                                      onChanged: (value) {
                                        setState(() {
                                          toggleValue = value;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [Text("")],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [Text("")],
                              ),
                              Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'For resume summaries ',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Switch(
                                      value: _tooggleValue,
                                      onChanged: (value) {
                                        setState(() {
                                          _tooggleValue = value;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [Text("")],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [Text("")],
                              ),
                              Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'For budgets ',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Switch(
                                      value: tooggleValue,
                                      onChanged: (value) {
                                        setState(() {
                                          tooggleValue = value;
                                        });
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 50, right: 50, top: 5, bottom: 5),
                            child: GestureDetector(
                              onTap: () async {
                                if (selectedRadio == 0) {
                                  //_captureImage();
                                  print(
                                      "context is  ++++" + context.toString());
                                } else if (selectedRadio == 1) {
                                  // _pickImage();
                                }
                                Navigator.of(context).pop();
                              },
                              child: Container(
                                height: 35,
                                decoration: BoxDecoration(
                                    color: Colors.blueAccent,
                                    borderRadius: BorderRadius.circular(30)),
                                child: Center(
                                    child: Text("Accept",
                                        style: TextStyle(color: Colors.white))),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.yellow,
                      width: 2.0,
                    ),
                    gradient: lGradient,
                    borderRadius: BorderRadius.circular(10)),
              ),
            );
          });
        });
  }

  void showColorDialog(BuildContext context) {
    showDialog(
        context: context,
        barrierColor: Colors.grey.withOpacity(0.5),
        builder: (context) {
          selectedRadio = -1;
          return StatefulBuilder(builder: (context, setState) {
            return Center(
              child: Container(
                height: 450,
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
                          Container(
                            height: 30,
                            width: double.infinity,
                            color: Colors.black,
                            child: Center(
                                child: Text(
                              "Change colors",
                              style: TextStyle(color: Colors.white),
                            )),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Center(
                              child: Text(
                            "Gradient colors",
                            style: TextStyle(color: Colors.white),
                          )),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Center(
                                  child: CircleAvatar(
                                radius: 30, // the size of the avatar
                                backgroundColor: Colors
                                    .black26, // the background color of the avatar
                              )),
                              Center(
                                  child: CircleAvatar(
                                      radius: 30, // the size of the avatar
                                      backgroundColor: Colors
                                          .blue, // the background color of the avatar
                                      child: Icon(
                                        Icons.lock,
                                        color: Colors.white,
                                      ) // the text or icon to display on the avatar
                                      )),
                              Center(
                                  child: CircleAvatar(
                                      radius: 30, // the size of the avatar
                                      backgroundColor: Colors
                                          .green, // the background color of the avatar
                                      child: Icon(
                                        Icons.lock,
                                        color: Colors.white,
                                      ) // the text or icon to display on the avatar
                                      )),
                              Center(
                                  child: CircleAvatar(
                                      radius: 30, // the size of the avatar
                                      backgroundColor: Colors
                                          .pink, // the background color of the avatar
                                      child: Icon(
                                        Icons.lock,
                                        color: Colors.white,
                                      ) // the text or icon to display on the avatar
                                      )),
                            ],
                          ),
                          Row(
                            children: [
                              Center(
                                  child: CircleAvatar(
                                      radius: 30, // the size of the avatar
                                      backgroundColor: Colors
                                          .purple, // the background color of the avatar
                                      child: Icon(
                                        Icons.lock,
                                        color: Colors.white,
                                      ))),
                              Center(
                                  child: CircleAvatar(
                                      radius: 30, // the size of the avatar
                                      backgroundColor: Colors
                                          .red, // the background color of the avatar
                                      child: Icon(
                                        Icons.lock,
                                        color: Colors.white,
                                      ) // the text or icon to display on the avatar
                                      )),
                              Center(
                                  child: CircleAvatar(
                                      radius: 30, // the size of the avatar
                                      backgroundColor: Colors
                                          .grey, // the background color of the avatar
                                      child: Icon(
                                        Icons.lock,
                                        color: Colors.white,
                                      ) // the text or icon to display on the avatar
                                      )),
                              Center(
                                  child: CircleAvatar(
                                      radius: 30, // the size of the avatar
                                      backgroundColor: Colors
                                          .yellow, // the background color of the avatar
                                      child: Icon(
                                        Icons.lock,
                                        color: Colors.white,
                                      ) // the text or icon to display on the avatar
                                      )),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Center(
                              child: Text(
                            "Plan colors",
                            style: TextStyle(color: Colors.white),
                          )),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Center(
                                  child: CircleAvatar(
                                radius: 30, // the size of the avatar
                                backgroundColor: Colors
                                    .black, // the background color of the avatar
                              )),
                              Center(
                                  child: CircleAvatar(
                                      radius: 30, // the size of the avatar
                                      backgroundColor: Colors
                                          .blue, // the background color of the avatar
                                      child: Icon(
                                        Icons.lock,
                                        color: Colors.white,
                                      ) // the text or icon to display on the avatar
                                      )),
                              Center(
                                  child: CircleAvatar(
                                      radius: 30, // the size of the avatar
                                      backgroundColor: Colors
                                          .green, // the background color of the avatar
                                      child: Icon(
                                        Icons.lock,
                                        color: Colors.white,
                                      ) // the text or icon to display on the avatar
                                      )),
                              Center(
                                  child: CircleAvatar(
                                      radius: 30, // the size of the avatar
                                      backgroundColor: Colors
                                          .pink, // the background color of the avatar
                                      child: Icon(
                                        Icons.lock,
                                        color: Colors.white,
                                      ) // the text or icon to display on the avatar
                                      )),
                            ],
                          ),
                          Row(
                            children: [
                              Center(
                                  child: CircleAvatar(
                                      radius: 30, // the size of the avatar
                                      backgroundColor: Colors
                                          .purple, // the background color of the avatar
                                      child: Icon(
                                        Icons.lock,
                                        color: Colors.white,
                                      ))),
                              Center(
                                  child: CircleAvatar(
                                      radius: 30, // the size of the avatar
                                      backgroundColor: Colors
                                          .red, // the background color of the avatar
                                      child: Icon(
                                        Icons.lock,
                                        color: Colors.white,
                                      ) // the text or icon to display on the avatar
                                      )),
                              Center(
                                  child: CircleAvatar(
                                      radius: 30, // the size of the avatar
                                      backgroundColor: Colors
                                          .grey, // the background color of the avatar
                                      child: Icon(
                                        Icons.lock,
                                        color: Colors.white,
                                      ) // the text or icon to display on the avatar
                                      )),
                              Center(
                                  child: CircleAvatar(
                                      radius: 30, // the size of the avatar
                                      backgroundColor: Colors
                                          .yellow, // the background color of the avatar
                                      child: Icon(
                                        Icons.lock,
                                        color: Colors.white,
                                      ) // the text or icon to display on the avatar
                                      )),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 50, right: 50, top: 5, bottom: 5),
                            child: GestureDetector(
                              onTap: () async {
                                if (selectedRadio == 0) {
                                  //_captureImage();
                                  print(
                                      "context is  ++++" + context.toString());
                                } else if (selectedRadio == 1) {
                                  // _pickImage();
                                }
                                Navigator.of(context).pop();
                              },
                              child: Container(
                                height: 35,
                                decoration: BoxDecoration(
                                    color: Colors.blueAccent,
                                    borderRadius: BorderRadius.circular(30)),
                                child: Center(
                                    child: Text("Accept",
                                        style: TextStyle(color: Colors.white))),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.yellow,
                      width: 2.0,
                    ),
                    gradient: lGradient,
                    borderRadius: BorderRadius.circular(10)),
              ),
            );
          });
        });
  }

  void showlanuageDialog(BuildContext context) {
    showDialog(
        context: context,
        barrierColor: Colors.grey.withOpacity(0.5),
        builder: (context) {
          return StatefulBuilder(builder: (context, setState) {
            return Center(
              child: Container(
                height: 400,
                // ignore: sort_child_properties_last
                child: SizedBox.expand(
                  child: Scaffold(
                    backgroundColor: Colors.transparent,
                    body:  SingleChildScrollView(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CheckboxListTile(
                              title: Text(
                                'Default',
                                style: TextStyle(color: Colors.white),
                              ), // the title of the checkbox item
                              value:
                                  _isCheckedvalue1, // the selection state of the checkbox
                              onChanged: (value) {
                                setState(() {
                                  _isCheckedvalue1 =
                                      value!; // update the selection state when the checkbox is changed
                                });
                              },
                              secondary: _isCheckedvalue1
                                  ? Icon(Icons.check)
                                  : null, // display the check icon if the checkbox is selected
                            ),
                             CheckboxListTile(
                              title: Text(
                                'Catalan',
                                style: TextStyle(color: Colors.white),
                              ), // the title of the checkbox item
                              value:
                                  _isCheckedvalue2, // the selection state of the checkbox
                              onChanged: (value) {
                                setState(() {
                                  _isCheckedvalue2 =
                                      value!; // update the selection state when the checkbox is changed
                                });
                              },
                              secondary: _isCheckedvalue2
                                  ? Icon(Icons.check)
                                  : null, // display the check icon if the checkbox is selected
                            ),
                           CheckboxListTile(
                              title: Text(
                                'Chinese',
                                style: TextStyle(color: Colors.white),
                              ), // the title of the checkbox item
                              value:
                                  _isCheckedvalue3, // the selection state of the checkbox
                              onChanged: (value) {
                                setState(() {
                                  _isCheckedvalue3 =
                                      value!; // update the selection state when the checkbox is changed
                                });
                              },
                              secondary: _isCheckedvalue3
                                  ? Icon(Icons.check)
                                  : null, // display the check icon if the checkbox is selected
                            ),
                          
                             CheckboxListTile(
                              title: Text(
                                'English',
                                style: TextStyle(color: Colors.white),
                              ), // the title of the checkbox item
                              value:
                                  _isCheckedvalue4, // the selection state of the checkbox
                              onChanged: (value) {
                                setState(() {
                                  _isCheckedvalue4 =
                                      value!; // update the selection state when the checkbox is changed
                                });
                              },
                              secondary: _isCheckedvalue4
                                  ? Icon(Icons.check)
                                  : null, // display the check icon if the checkbox is selected
                            ),
                             CheckboxListTile(
                              title: Text(
                                'French',
                                style: TextStyle(color: Colors.white),
                              ), // the title of the checkbox item
                              value:
                                  _isCheckedvalue5, // the selection state of the checkbox
                              onChanged: (value) {
                                setState(() {
                                  _isCheckedvalue5 =
                                      value!; // update the selection state when the checkbox is changed
                                });
                              },
                              secondary: _isCheckedvalue5
                                  ? Icon(Icons.check)
                                  : null, // display the check icon if the checkbox is selected
                            ),
                           CheckboxListTile(
                              title: Text(
                                'German',
                                style: TextStyle(color: Colors.white),
                              ), // the title of the checkbox item
                              value:
                                  _isCheckedvalue6, // the selection state of the checkbox
                              onChanged: (value) {
                                setState(() {
                                  _isCheckedvalue6 =
                                      value!; // update the selection state when the checkbox is changed
                                });
                              },
                              secondary: _isCheckedvalue7
                                  ? Icon(Icons.check)
                                  : null, // display the check icon if the checkbox is selected
                            ),
                           CheckboxListTile(
                              title: Text(
                                'Indonesian',
                                style: TextStyle(color: Colors.white),
                              ), // the title of the checkbox item
                              value:
                                  _isCheckedvalue8, // the selection state of the checkbox
                              onChanged: (value) {
                                setState(() {
                                  _isCheckedvalue8 =
                                      value!; // update the selection state when the checkbox is changed
                                });
                              },
                              secondary: _isCheckedvalue8
                                  ? Icon(Icons.check)
                                  : null, // display the check icon if the checkbox is selected
                            ),
                           CheckboxListTile(
                              title: Text(
                                'Italian',
                                style: TextStyle(color: Colors.white),
                              ), // the title of the checkbox item
                              value:
                                  _isCheckedvalue9, // the selection state of the checkbox
                              onChanged: (value) {
                                setState(() {
                                  _isCheckedvalue9 =
                                      value!; // update the selection state when the checkbox is changed
                                });
                              },
                              secondary: _isCheckedvalue9
                                  ? Icon(Icons.check)
                                  : null, // display the check icon if the checkbox is selected
                            ),
                           CheckboxListTile(
                              title: Text(
                                'Korean',
                                style: TextStyle(color: Colors.white),
                              ), // the title of the checkbox item
                              value:
                                  _isCheckedvalue10, // the selection state of the checkbox
                              onChanged: (value) {
                                setState(() {
                                  _isCheckedvalue10 =
                                      value!; // update the selection state when the checkbox is changed
                                });
                              },
                              secondary: _isCheckedvalue10
                                  ? Icon(Icons.check)
                                  : null, // display the check icon if the checkbox is selected
                            ),
                           CheckboxListTile(
                              title: Text(
                                'Portuguese',
                                style: TextStyle(color: Colors.white),
                              ), // the title of the checkbox item
                              value:
                                  _isCheckedvalue11, // the selection state of the checkbox
                              onChanged: (value) {
                                setState(() {
                                  _isCheckedvalue11 =
                                      value!; // update the selection state when the checkbox is changed
                                });
                              },
                              secondary: _isCheckedvalue11
                                  ? Icon(Icons.check)
                                  : null, // display the check icon if the checkbox is selected
                            ),
                           CheckboxListTile(
                              title: Text(
                                'Romanian',
                                style: TextStyle(color: Colors.white),
                              ), // the title of the checkbox item
                              value:
                                  _isCheckedvalue12, // the selection state of the checkbox
                              onChanged: (value) {
                                setState(() {
                                  _isCheckedvalue12 =
                                      value!; // update the selection state when the checkbox is changed
                                });
                              },
                              secondary: _isCheckedvalue12
                                  ? Icon(Icons.check)
                                  : null, // display the check icon if the checkbox is selected
                            ),
                           CheckboxListTile(
                              title: Text(
                                'Rusasian',
                                style: TextStyle(color: Colors.white),
                              ), // the title of the checkbox item
                              value:
                                  _isCheckedvalue13, // the selection state of the checkbox
                              onChanged: (value) {
                                setState(() {
                                  _isCheckedvalue13 =
                                      value!; // update the selection state when the checkbox is changed
                                });
                              },
                              secondary: _isCheckedvalue13
                                  ? Icon(Icons.check)
                                  : null, // display the check icon if the checkbox is selected
                            ),
                           CheckboxListTile(
                              title: Text(
                                'Spanish',
                                style: TextStyle(color: Colors.white),
                              ), // the title of the checkbox item
                              value:
                                  _isCheckedvalue14, // the selection state of the checkbox
                              onChanged: (value) {
                                setState(() {
                                  _isCheckedvalue14 =
                                      value!; // update the selection state when the checkbox is changed
                                });
                              },
                              secondary: _isCheckedvalue14
                                  ? Icon(Icons.check)
                                  : null, // display the check icon if the checkbox is selected
                            ),
                           CheckboxListTile(
                              title: Text(
                                'Ukrainian',
                                style: TextStyle(color: Colors.white),
                              ), // the title of the checkbox item
                              value:
                                  _isCheckedvalue15, // the selection state of the checkbox
                              onChanged: (value) {
                                setState(() {
                                  _isCheckedvalue15 =
                                      value!; // update the selection state when the checkbox is changed
                                });
                              },
                              secondary: _isCheckedvalue15
                                  ? Icon(Icons.check)
                                  : null, // display the check icon if the checkbox is selected
                            ),
                          
                          
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 50, right: 50, top: 5, bottom: 5),
                              child: GestureDetector(
                                onTap: () async {
                                  if (selectedRadio == 0) {
                                    //_captureImage();
                                    print(
                                        "context is  ++++" + context.toString());
                                  } else if (selectedRadio == 1) {
                                    // _pickImage();
                                  }
                                  Navigator.of(context).pop();
                                },
                                child: Container(
                                  height: 35,
                                  decoration: BoxDecoration(
                                      color: Colors.blueAccent,
                                      borderRadius: BorderRadius.circular(30)),
                                  child: Center(
                                      child: Text("Accept",
                                          style: TextStyle(color: Colors.white))),
                                ),
                              ),
                            )
                          ],
                        ),
                    ),
                    
                  ),
                ),
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.yellow,
                      width: 2.0,
                    ),
                    gradient: lGradient,
                    borderRadius: BorderRadius.circular(10)),
              ),
            );
          });
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      appBar: AppBar(
        backgroundColor: Colors.white10,
        title: Text(
          "Settings",
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 10),
              height: 40,
              width: double.infinity,
              child: Text(
                "Basic Settings",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => EditCategory()));
              },
              child: Container(
                height: 70,
                width: double.infinity,
                child: Row(
                  children: [
                    Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Edit categories",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        Text(
                            "create categories,modify or delete current \n categories",
                            style: TextStyle(
                              color: Colors.white,
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Divider(
              color: Colors.white,
              height: 5,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Currencies()));
              },
              child: Container(
                height: 70,
                width: double.infinity,
                child: Row(
                  children: [
                    Icon(
                      Icons.currency_exchange,
                      color: Colors.white,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Currency Format",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        Text(
                            "Mannage your currencies,change the currency \nformat.",
                            style: TextStyle(
                              color: Colors.white,
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Divider(
              color: Colors.white,
              height: 5,
            ),
            GestureDetector(
              onTap: () {
                showdateTimeDialog(context);
              },
              child: Container(
                height: 70,
                width: double.infinity,
                child: Row(
                  children: [
                    Icon(
                      Icons.calendar_month_outlined,
                      color: Colors.white,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Date and time Format",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        Text("change the way you view date and time",
                            style: TextStyle(
                              color: Colors.white,
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Divider(
              color: Colors.white,
              height: 5,
            ),
            GestureDetector(
              onTap: () => showTransfersDialog(context),
              child: Container(
                height: 70,
                width: double.infinity,
                child: Row(
                  children: [
                    Icon(
                      Icons.transfer_within_a_station_outlined,
                      color: Colors.white,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Transfers",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        Text(
                            "Enable or disable transfers of reports and \nsummaries.",
                            style: TextStyle(
                              color: Colors.white,
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Divider(
              color: Colors.white,
              height: 5,
            ),
            Container(
              height: 30,
              width: double.infinity,
              child: Text(
                "Appearance",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Divider(
              color: Colors.white,
              height: 5,
            ),
            GestureDetector(
              onTap: () {
                showColorDialog(context);
              },
              child: Container(
                height: 70,
                width: double.infinity,
                child: Row(
                  children: [
                    Icon(
                      Icons.change_circle,
                      color: Colors.white,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Change colors",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        Text("choose from 16 themes.",
                            style: TextStyle(
                              color: Colors.white,
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Divider(
              color: Colors.white,
              height: 5,
            ),
            GestureDetector(
              onTap: () {
                showlanuageDialog(context);
              },
              child: Container(
                height: 70,
                width: double.infinity,
                child: Row(
                  children: [
                    Icon(
                      Icons.language,
                      color: Colors.white,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Language",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        Text(
                            "Allows you to change language of the \n applcation.",
                            style: TextStyle(
                              color: Colors.white,
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Divider(
              color: Colors.white,
              height: 5,
            ),
            Container(
              height: 30,
              width: double.infinity,
              child: Text(
                "SYstem",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Divider(
              color: Colors.white,
              height: 5,
            ),
            Container(
              height: 100,
              width: double.infinity,
              child: Row(
                children: [
                  Icon(
                    Icons.data_object,
                    color: Colors.white,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Database",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      Text(
                          "Create backups, configure automatic \n backups and recover, restart the \ndatabase.",
                          style: TextStyle(
                            color: Colors.white,
                          )),
                    ],
                  )
                ],
              ),
            ),
            Divider(
              color: Colors.white,
              height: 5,
            ),
            Container(
              height: 100,
              width: double.infinity,
              child: Row(
                children: [
                  Icon(
                    Icons.lock,
                    color: Colors.white,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Password",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      Text("set a password to open the application.",
                          style: TextStyle(
                            color: Colors.white,
                          )),
                    ],
                  )
                ],
              ),
            ),
            Divider(
              color: Colors.white,
              height: 5,
            ),
            Container(
              height: 100,
              width: double.infinity,
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_drop_down_circle_outlined,
                    color: Colors.white,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dropbox",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      Text("Permission to use your dropbox accont.",
                          style: TextStyle(
                            color: Colors.white,
                          )),
                    ],
                  )
                ],
              ),
            ),
            Divider(
              color: Colors.white,
              height: 5,
            ),
            Container(
              height: 100,
              width: double.infinity,
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_drop_down_circle_outlined,
                    color: Colors.white,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Notifications",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      Text(
                          "Enable, disable and change the time of \n notifications.",
                          style: TextStyle(
                            color: Colors.white,
                          )),
                    ],
                  )
                ],
              ),
            ),
            Divider(
              color: Colors.white,
              height: 5,
            ),
            Container(
              height: 100,
              width: double.infinity,
              child: Row(
                children: [
                  Icon(
                    Icons.expand_circle_down,
                    color: Colors.white,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Daily Expenses 4",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      Text(
                          "You can transfer the data you have in this \n application to use in the dalay expenses 4.",
                          style: TextStyle(
                            color: Colors.white,
                          )),
                    ],
                  )
                ],
              ),
            ),
            Divider(
              color: Colors.white,
              height: 5,
            ),
            Container(
              height: 30,
              width: double.infinity,
              child: Text(
                "Others",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Divider(
              color: Colors.white,
              height: 5,
            ),
            Container(
              height: 100,
              width: double.infinity,
              child: Row(
                children: [
                  Icon(
                    Icons.person_add_alt,
                    color: Colors.white,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Contact",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      Text(
                          "Frequent asked questions, suggestions, \n help improve translations.",
                          style: TextStyle(
                            color: Colors.white,
                          )),
                    ],
                  )
                ],
              ),
            ),
            Divider(
              color: Colors.white,
              height: 5,
            ),
            Container(
              height: 100,
              width: double.infinity,
              child: Row(
                children: [
                  Icon(
                    Icons.expand_circle_down,
                    color: Colors.white,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Daily Expenses 4",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      Text(
                          "You can transfer the data you have in this \n application to use in the dalay expenses 4.",
                          style: TextStyle(
                            color: Colors.white,
                          )),
                    ],
                  )
                ],
              ),
            ),
            Divider(
              color: Colors.white,
              height: 5,
            ),
            Container(
              height: 100,
              width: double.infinity,
              child: Row(
                children: [
                  Icon(
                    Icons.task_alt,
                    color: Colors.white,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "PRO License",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      Text(
                          "Advantages of the pro version, purchase the \n license.",
                          style: TextStyle(
                            color: Colors.white,
                          )),
                    ],
                  )
                ],
              ),
            ),
            Divider(
              color: Colors.white,
              height: 5,
            ),
            Container(
              height: 100,
              width: double.infinity,
              child: Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.white,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Rate application",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      Text("Rate the app on the play srore.",
                          style: TextStyle(
                            color: Colors.white,
                          )),
                    ],
                  )
                ],
              ),
            ),
            Divider(
              color: Colors.white,
              height: 5,
            ),
            Container(
              height: 100,
              width: double.infinity,
              child: Row(
                children: [
                  Icon(
                    Icons.graphic_eq,
                    color: Colors.white,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "About the application",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      Text("Version and features.",
                          style: TextStyle(
                            color: Colors.white,
                          )),
                    ],
                  )
                ],
              ),
            ),
            Divider(
              color: Colors.white,
              height: 5,
            ),
            Container(
              height: 100,
              width: double.infinity,
              child: Row(
                children: [
                  Icon(
                    Icons.help,
                    color: Colors.white,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Help",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      Text("Brief Explanations.",
                          style: TextStyle(
                            color: Colors.white,
                          )),
                    ],
                  )
                ],
              ),
            ),
            Divider(
              color: Colors.white,
              height: 5,
            ),
            Container(
              height: 100,
              width: double.infinity,
              child: Row(
                children: [
                  Icon(
                    Icons.task_alt,
                    color: Colors.white,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Privacy policy",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      Text("Learn how we use and protect your data.",
                          style: TextStyle(
                            color: Colors.white,
                          )),
                    ],
                  )
                ],
              ),
            ),
            Divider(
              color: Colors.white,
              height: 5,
            ),
            Container(
              height: 100,
              width: double.infinity,
              child: Row(
                children: [
                  Icon(
                    Icons.task_alt,
                    color: Colors.white,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Terms of use",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      Text("Everything you need to know.",
                          style: TextStyle(
                            color: Colors.white,
                          )),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

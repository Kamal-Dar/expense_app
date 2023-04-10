import 'package:flutter/material.dart';

import 'colors/colors.dart';

class Currencies extends StatefulWidget {
  const Currencies({super.key});

  @override
  State<Currencies> createState() => _CurrenciesState();
}

class _CurrenciesState extends State<Currencies> {

  bool _isOn = false;
  bool isOn = false;
   int?selectedRadio;
   

   void _toggle() {
    setState(() {
      _isOn = !_isOn;
    });
  }

void toggle() {
    setState(() {
      isOn = !isOn;
    });
  }

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.white10,
        centerTitle: true,
        title: Text("Currencies",style: TextStyle(color: Colors.white),),
      ),
         body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final containerHeight = constraints.maxHeight / 3;
          return Column(
            children: [
              Container(
                height: containerHeight,
                width: double.infinity,
                color: Colors.black,
                
                  child: Column(
                    children: [
                      Text(
                        '6,785',
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 20,
                        ),
                      
                ),
                SizedBox(height: 10,),
                Row(children: [
                  Expanded(child: 
                  Container(
                    height: 22,
                    color: Colors.grey,
                     child: Row(
                      children: [
                        Expanded(child: Container(height: 20,child: Text("1,000,.00",style: TextStyle(color: Colors.white),),decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.blue,),)),
                        Expanded(child: Container(height: 20,child: Text("1,000,.00",style: TextStyle(color: Colors.white),),decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey,),))
                      ],
                    ),
                  )),
                  SizedBox(width: 10,),
                  Expanded(child: 
                  Container(
                    height: 22,
                    color: Colors.grey,
                     child: Row(
                      children: [
                        Expanded(child: Container(height: 20,child: Text("1,000,.00",style: TextStyle(color: Colors.white),),decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey,),)),
                        Expanded(child: Container(height: 20,child: Text("1,000,.00",style: TextStyle(color: Colors.white),),decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.blue,),)),
                      ],
                    ),
                  )),
                ],),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      
                      children: [
                      Text("")
                    ],),
                    Row(
                      children: [
                        Text("Decimals to show:",style: TextStyle(color: Colors.white),),
                        Container(height: 30,width: 40,color: Colors.white,child: Center(child: Icon(Icons.arrow_drop_down)),)
                      ],
                    ),
                  ],
                ),
                    Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      
                      children: [
                      Text("")
                    ],),
                    Row(
                      children: [
                        Text("Show symbol:",style: TextStyle(color: Colors.white),),
                        GestureDetector(
                                    onTap: _toggle,
                                    child: Icon(
                                      _isOn
                                          ? Icons.toggle_on
                                          : Icons.toggle_off,
                                      color: Colors.white,
                                      size: 40,
                                    ),
                                  ),
                               
                      ],
                    ),
                  ],
                ),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      
                      children: [
                      Container(
                        height: 30,
                        width: 20,
                        color: Colors.grey,
                        child: Icon(Icons.add,size: 20,color: Colors.white,),
                      )
                    ],),
                    Row(
                      children: [
                        Text("Show ISO code:",style: TextStyle(color: Colors.white),),
                        GestureDetector(
                                    onTap: toggle,
                                    child: Icon(
                                      isOn
                                          ? Icons.toggle_on
                                          : Icons.toggle_off,
                                      color: Colors.white,
                                      size: 40,
                                    ),
                                  ),
                               
                      ],
                    ),
                  ],
                ),
                
                    ],
                  ),
              ),
            Expanded(
            child: Container(
              color: Colors.white,
              child: SingleChildScrollView(
                child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            
                               RadioListTile(
                                value: 0,
                                groupValue: selectedRadio,
                                title: Text("AED \t\t د.إ",
                                    style: TextStyle(
                                        fontSize: 14, )),
                                onChanged: (dynamic val) {
                                  setState(() {
                                    selectedRadio = val;
                                  });
                                },
                                activeColor: Colors.blue,
                              ),
                            
                            Theme(
                              data: Theme.of(context).copyWith(
                                unselectedWidgetColor: Colors.grey,
                                disabledColor: Colors.grey,
                              ),
                              child: RadioListTile(
                                value: 1,
                                groupValue: selectedRadio,
                                title: Text("AFS \t\t Af",
                                    style: TextStyle(
                                        fontSize: 14, )),
                                onChanged: (dynamic val) {
                                  setState(() {
                                    selectedRadio = val;
                                  });
                                },
                                activeColor: Colors.blue,
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
                                title: Text("AKZ \t\t Kz",
                                    style: TextStyle(
                                        fontSize: 14, )),
                                onChanged: (dynamic val) {
                                  setState(() {
                                    selectedRadio = val;
                                  });
                                },
                                activeColor: Colors.blue,
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
                                title: Text("ARS \t\t \$",
                                    style: TextStyle(
                                        fontSize: 14, )),
                                onChanged: (dynamic val) {
                                  setState(() {
                                    selectedRadio = val;
                                  });
                                },
                                activeColor: Colors.blue,
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
                                title: Text("AUD \t\t \$",
                                    style: TextStyle(
                                        fontSize: 14, )),
                                onChanged: (dynamic val) {
                                  setState(() {
                                    selectedRadio = val;
                                  });
                                },
                                activeColor: Colors.blue,
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
                                title: Text("AZN \t\t Ma",
                                    style: TextStyle(
                                        fontSize: 14, )),
                                onChanged: (dynamic val) {
                                  setState(() {
                                    selectedRadio = val;
                                  });
                                },
                                activeColor: Colors.blue,
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
                                title: Text("BAM \t\t KM",
                                    style: TextStyle(
                                        fontSize: 14, )),
                                onChanged: (dynamic val) {
                                  setState(() {
                                    selectedRadio = val;
                                  });
                                },
                                activeColor: Colors.blue,
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
                                title: Text("BDT \t\t ৳",
                                    style: TextStyle(
                                        fontSize: 14, )),
                                onChanged: (dynamic val) {
                                  setState(() {
                                    selectedRadio = val;
                                  });
                                },
                                activeColor: Colors.blue,
                              ),
                            ),
                            Theme(
                              data: Theme.of(context).copyWith(
                                unselectedWidgetColor: Colors.grey,
                                disabledColor: Colors.grey,
                              ),
                              child: RadioListTile(
                                value: 8,
                                groupValue: selectedRadio,
                                title: Text("BGN \t\t Лв.",
                                    style: TextStyle(
                                        fontSize: 14, )),
                                onChanged: (dynamic val) {
                                  setState(() {
                                    selectedRadio = val;
                                  });
                                },
                                activeColor: Colors.blue,
                              ),
                            ),
                            
                            Theme(
                              data: Theme.of(context).copyWith(
                                unselectedWidgetColor: Colors.grey,
                                disabledColor: Colors.grey,
                              ),
                              child: RadioListTile(
                                value: 9,
                                groupValue: selectedRadio,
                                title: Text("BHD \t\t .د.",
                                    style: TextStyle(
                                        fontSize: 14, )),
                                onChanged: (dynamic val) {
                                  setState(() {
                                    selectedRadio = val;
                                  });
                                },
                                activeColor: Colors.blue,
                              ),
                            ),
                            
                            Theme(
                              data: Theme.of(context).copyWith(
                                unselectedWidgetColor: Colors.grey,
                                disabledColor: Colors.grey,
                              ),
                              child: RadioListTile(
                                value: 10,
                                groupValue: selectedRadio,
                                title: Text("BOB \t\t Bs.",
                                    style: TextStyle(
                                        fontSize: 14, )),
                                onChanged: (dynamic val) {
                                  setState(() {
                                    selectedRadio = val;
                                  });
                                },
                                activeColor: Colors.blue,
                              ),
                            ),
                            Theme(
                              data: Theme.of(context).copyWith(
                                unselectedWidgetColor: Colors.grey,
                                disabledColor: Colors.grey,
                              ),
                              child: RadioListTile(
                                value: 11,
                                groupValue: selectedRadio,
                                title: Text("BRL \t\t B\$",
                                    style: TextStyle(
                                        fontSize: 14, )),
                                onChanged: (dynamic val) {
                                  setState(() {
                                    selectedRadio = val;
                                  });
                                },
                                activeColor: Colors.blue,
                              ),
                            ),
                            Theme(
                              data: Theme.of(context).copyWith(
                                unselectedWidgetColor: Colors.grey,
                                disabledColor: Colors.grey,
                              ),
                              child: RadioListTile(
                                value: 12,
                                groupValue: selectedRadio,
                                title: Text("BTC \t\t ฿",
                                    style: TextStyle(
                                        fontSize: 14, )),
                                onChanged: (dynamic val) {
                                  setState(() {
                                    selectedRadio = val;
                                  });
                                },
                                activeColor: Colors.blue,
                              ),
                            ),
                            Theme(
                              data: Theme.of(context).copyWith(
                                unselectedWidgetColor: Colors.grey,
                                disabledColor: Colors.grey,
                              ),
                              child: RadioListTile(
                                value: 13,
                                groupValue: selectedRadio,
                                title: Text("CAd \t\t C\$",
                                    style: TextStyle(
                                        fontSize: 14, )),
                                onChanged: (dynamic val) {
                                  setState(() {
                                    selectedRadio = val;
                                  });
                                },
                                activeColor: Colors.blue,
                              ),
                            ),
                            Theme(
                              data: Theme.of(context).copyWith(
                                unselectedWidgetColor: Colors.grey,
                                disabledColor: Colors.grey,
                              ),
                              child: RadioListTile(
                                value: 14,
                                groupValue: selectedRadio,
                                title: Text("CFH \t\t Fr.",
                                    style: TextStyle(
                                        fontSize: 14, )),
                                onChanged: (dynamic val) {
                                  setState(() {
                                    selectedRadio = val;
                                  });
                                },
                                activeColor: Colors.blue,
                              ),
                            ),
                            Theme(
                              data: Theme.of(context).copyWith(
                                unselectedWidgetColor: Colors.grey,
                                disabledColor: Colors.grey,
                              ),
                              child: RadioListTile(
                                value: 15,
                                groupValue: selectedRadio,
                                title: Text("CLP \t\t \$",
                                    style: TextStyle(
                                        fontSize: 14, )),
                                onChanged: (dynamic val) {
                                  setState(() {
                                    selectedRadio = val;
                                  });
                                },
                                activeColor: Colors.blue,
                              ),
                            ),
                            Theme(
                              data: Theme.of(context).copyWith(
                                unselectedWidgetColor: Colors.grey,
                                disabledColor: Colors.grey,
                              ),
                              child: RadioListTile(
                                value: 16,
                                groupValue: selectedRadio,
                                title: Text("CNY \t\t ¥",
                                    style: TextStyle(
                                        fontSize: 14, )),
                                onChanged: (dynamic val) {
                                  setState(() {
                                    selectedRadio = val;
                                  });
                                },
                                activeColor: Colors.blue,
                              ),
                            ),
                            Theme(
                              data: Theme.of(context).copyWith(
                                unselectedWidgetColor: Colors.grey,
                                disabledColor: Colors.grey,
                              ),
                              child: RadioListTile(
                                value: 17,
                                groupValue: selectedRadio,
                                title: Text("COP \t\t \$",
                                    style: TextStyle(
                                        fontSize: 14, )),
                                onChanged: (dynamic val) {
                                  setState(() {
                                    selectedRadio = val;
                                  });
                                },
                                activeColor: Colors.blue,
                              ),
                            ),
                            Theme(
                              data: Theme.of(context).copyWith(
                                unselectedWidgetColor: Colors.grey,
                                disabledColor: Colors.grey,
                              ),
                              child: RadioListTile(
                                value: 18,
                                groupValue: selectedRadio,
                                title: Text("CRC \t\t ₡",
                                    style: TextStyle(
                                        fontSize: 14, )),
                                onChanged: (dynamic val) {
                                  setState(() {
                                    selectedRadio = val;
                                  });
                                },
                                activeColor: Colors.blue,
                              ),
                            ),
                            Theme(
                              data: Theme.of(context).copyWith(
                                unselectedWidgetColor: Colors.grey,
                                disabledColor: Colors.grey,
                              ),
                              child: RadioListTile(
                                value: 19,
                                groupValue: selectedRadio,
                                title: Text("CZK \t\t Kč",
                                    style: TextStyle(
                                        fontSize: 14, )),
                                onChanged: (dynamic val) {
                                  setState(() {
                                    selectedRadio = val;
                                  });
                                },
                                activeColor: Colors.blue,
                              ),
                            ),
                            Theme(
                              data: Theme.of(context).copyWith(
                                unselectedWidgetColor: Colors.grey,
                                disabledColor: Colors.grey,
                              ),
                              child: RadioListTile(
                                value: 20,
                                groupValue: selectedRadio,
                                title: Text("DKK \t\t Kr",
                                    style: TextStyle(
                                        fontSize: 14, )),
                                onChanged: (dynamic val) {
                                  setState(() {
                                    selectedRadio = val;
                                  });
                                },
                                activeColor: Colors.blue,
                              ),
                            ),
                             Theme(
                              data: Theme.of(context).copyWith(
                                unselectedWidgetColor: Colors.grey,
                                disabledColor: Colors.grey,
                              ),
                              child: RadioListTile(
                                value: 21,
                                groupValue: selectedRadio,
                                title: Text("DOP \t\t RD",
                                    style: TextStyle(
                                        fontSize: 14, )),
                                onChanged: (dynamic val) {
                                  setState(() {
                                    selectedRadio = val;
                                  });
                                },
                                activeColor: Colors.blue,
                              ),
                            ),
                           Theme(
                              data: Theme.of(context).copyWith(
                                unselectedWidgetColor: Colors.grey,
                                disabledColor: Colors.grey,
                              ),
                              child: RadioListTile(
                                value: 22,
                                groupValue: selectedRadio,
                                title: Text("EGP \t\t ج.م",
                                    style: TextStyle(
                                        fontSize: 14, )),
                                onChanged: (dynamic val) {
                                  setState(() {
                                    selectedRadio = val;
                                  });
                                },
                                activeColor: Colors.blue,
                              ),
                            ),
                           Theme(
                              data: Theme.of(context).copyWith(
                                unselectedWidgetColor: Colors.grey,
                                disabledColor: Colors.grey,
                              ),
                              child: RadioListTile(
                                value: 23,
                                groupValue: selectedRadio,
                                title: Text("EUR \t\t €",
                                    style: TextStyle(
                                        fontSize: 14, )),
                                onChanged: (dynamic val) {
                                  setState(() {
                                    selectedRadio = val;
                                  });
                                },
                                activeColor: Colors.blue,
                              ),
                            ),
                           Theme(
                              data: Theme.of(context).copyWith(
                                unselectedWidgetColor: Colors.grey,
                                disabledColor: Colors.grey,
                              ),
                              child: RadioListTile(
                                value: 24,
                                groupValue: selectedRadio,
                                title: Text("GBP \t\t £",
                                    style: TextStyle(
                                        fontSize: 14, )),
                                onChanged: (dynamic val) {
                                  setState(() {
                                    selectedRadio = val;
                                  });
                                },
                                activeColor: Colors.blue,
                              ),
                            ),
                           Theme(
                              data: Theme.of(context).copyWith(
                                unselectedWidgetColor: Colors.grey,
                                disabledColor: Colors.grey,
                              ),
                              child: RadioListTile(
                                value: 25,
                                groupValue: selectedRadio,
                                title: Text("GTQ \t\t Q",
                                    style: TextStyle(
                                        fontSize: 14, )),
                                onChanged: (dynamic val) {
                                  setState(() {
                                    selectedRadio = val;
                                  });
                                },
                                activeColor: Colors.blue,
                              ),
                            ),
                           Theme(
                              data: Theme.of(context).copyWith(
                                unselectedWidgetColor: Colors.grey,
                                disabledColor: Colors.grey,
                              ),
                              child: RadioListTile(
                                value: 26,
                                groupValue: selectedRadio,
                                title: Text("HKD \t\t \$",
                                    style: TextStyle(
                                        fontSize: 14, )),
                                onChanged: (dynamic val) {
                                  setState(() {
                                    selectedRadio = val;
                                  });
                                },
                                activeColor: Colors.blue,
                              ),
                            ),
                           Theme(
                              data: Theme.of(context).copyWith(
                                unselectedWidgetColor: Colors.grey,
                                disabledColor: Colors.grey,
                              ),
                              child: RadioListTile(
                                value: 27,
                                groupValue: selectedRadio,
                                title: Text("HNL \t\t L",
                                    style: TextStyle(
                                        fontSize: 14, )),
                                onChanged: (dynamic val) {
                                  setState(() {
                                    selectedRadio = val;
                                  });
                                },
                                activeColor: Colors.blue,
                              ),
                            ),
                           Theme(
                              data: Theme.of(context).copyWith(
                                unselectedWidgetColor: Colors.grey,
                                disabledColor: Colors.grey,
                              ),
                              child: RadioListTile(
                                value: 28,
                                groupValue: selectedRadio,
                                title: Text("HUF \t\t Ft",
                                    style: TextStyle(
                                        fontSize: 14, )),
                                onChanged: (dynamic val) {
                                  setState(() {
                                    selectedRadio = val;
                                  });
                                },
                                activeColor: Colors.blue,
                              ),
                            ),
                           Theme(
                              data: Theme.of(context).copyWith(
                                unselectedWidgetColor: Colors.grey,
                                disabledColor: Colors.grey,
                              ),
                              child: RadioListTile(
                                value: 29,
                                groupValue: selectedRadio,
                                title: Text("IDR \t\t Rp",
                                    style: TextStyle(
                                        fontSize: 14, )),
                                onChanged: (dynamic val) {
                                  setState(() {
                                    selectedRadio = val;
                                  });
                                },
                                activeColor: Colors.blue,
                              ),
                            ),
                           Theme(
                              data: Theme.of(context).copyWith(
                                unselectedWidgetColor: Colors.grey,
                                disabledColor: Colors.grey,
                              ),
                              child: RadioListTile(
                                value: 30,
                                groupValue: selectedRadio,
                                title: Text("ILS \t\t ₪",
                                    style: TextStyle(
                                        fontSize: 14, )),
                                onChanged: (dynamic val) {
                                  setState(() {
                                    selectedRadio = val;
                                  });
                                },
                                activeColor: Colors.blue,
                              ),
                            ),
                           Theme(
                              data: Theme.of(context).copyWith(
                                unselectedWidgetColor: Colors.grey,
                                disabledColor: Colors.grey,
                              ),
                              child: RadioListTile(
                                value: 31,
                                groupValue: selectedRadio,
                                title: Text("INR \t\t ₹",
                                    style: TextStyle(
                                        fontSize: 14, )),
                                onChanged: (dynamic val) {
                                  setState(() {
                                    selectedRadio = val;
                                  });
                                },
                                activeColor: Colors.blue,
                              ),
                            ),
                           Theme(
                              data: Theme.of(context).copyWith(
                                unselectedWidgetColor: Colors.grey,
                                disabledColor: Colors.grey,
                              ),
                              child: RadioListTile(
                                value: 32,
                                groupValue: selectedRadio,
                                title: Text("JPY \t\t ¥",
                                    style: TextStyle(
                                        fontSize: 14, )),
                                onChanged: (dynamic val) {
                                  setState(() {
                                    selectedRadio = val;
                                  });
                                },
                                activeColor: Colors.blue,
                              ),
                            ),
                           Theme(
                              data: Theme.of(context).copyWith(
                                unselectedWidgetColor: Colors.grey,
                                disabledColor: Colors.grey,
                              ),
                              child: RadioListTile(
                                value: 33,
                                groupValue: selectedRadio,
                                title: Text("KES \t\t KS",
                                    style: TextStyle(
                                        fontSize: 14, )),
                                onChanged: (dynamic val) {
                                  setState(() {
                                    selectedRadio = val;
                                  });
                                },
                                activeColor: Colors.blue,
                              ),
                            ),
                           Theme(
                              data: Theme.of(context).copyWith(
                                unselectedWidgetColor: Colors.grey,
                                disabledColor: Colors.grey,
                              ),
                              child: RadioListTile(
                                value: 34,
                                groupValue: selectedRadio,
                                title: Text("KRW \t\t ₩",
                                    style: TextStyle(
                                        fontSize: 14, )),
                                onChanged: (dynamic val) {
                                  setState(() {
                                    selectedRadio = val;
                                  });
                                },
                                activeColor: Colors.blue,
                              ),
                            ),
                           Theme(
                              data: Theme.of(context).copyWith(
                                unselectedWidgetColor: Colors.grey,
                                disabledColor: Colors.grey,
                              ),
                              child: RadioListTile(
                                value: 35,
                                groupValue: selectedRadio,
                                title: Text("KWD \t\t د.ك",
                                    style: TextStyle(
                                        fontSize: 14, )),
                                onChanged: (dynamic val) {
                                  setState(() {
                                    selectedRadio = val;
                                  });
                                },
                                activeColor: Colors.blue,
                              ),
                            ),
                           Theme(
                              data: Theme.of(context).copyWith(
                                unselectedWidgetColor: Colors.grey,
                                disabledColor: Colors.grey,
                              ),
                              child: RadioListTile(
                                value: 36,
                                groupValue: selectedRadio,
                                title: Text("KZT \t\t ₸",
                                    style: TextStyle(
                                        fontSize: 14, )),
                                onChanged: (dynamic val) {
                                  setState(() {
                                    selectedRadio = val;
                                  });
                                },
                                activeColor: Colors.blue,
                              ),
                            ),
                           Theme(
                              data: Theme.of(context).copyWith(
                                unselectedWidgetColor: Colors.grey,
                                disabledColor: Colors.grey,
                              ),
                              child: RadioListTile(
                                value: 37,
                                groupValue: selectedRadio,
                                title: Text("LBP \t\t ل.ل.",
                                    style: TextStyle(
                                        fontSize: 14, )),
                                onChanged: (dynamic val) {
                                  setState(() {
                                    selectedRadio = val;
                                  });
                                },
                                activeColor: Colors.blue,
                              ),
                            ),
                           Theme(
                              data: Theme.of(context).copyWith(
                                unselectedWidgetColor: Colors.grey,
                                disabledColor: Colors.grey,
                              ),
                              child: RadioListTile(
                                value: 38,
                                groupValue: selectedRadio,
                                title: Text("LRK \t\t Rs",
                                    style: TextStyle(
                                        fontSize: 14, )),
                                onChanged: (dynamic val) {
                                  setState(() {
                                    selectedRadio = val;
                                  });
                                },
                                activeColor: Colors.blue,
                              ),
                            ),
                           Theme(
                              data: Theme.of(context).copyWith(
                                unselectedWidgetColor: Colors.grey,
                                disabledColor: Colors.grey,
                              ),
                              child: RadioListTile(
                                value: 39,
                                groupValue: selectedRadio,
                                title: Text("MAD \t\t درہ",
                                    style: TextStyle(
                                        fontSize: 14, )),
                                onChanged: (dynamic val) {
                                  setState(() {
                                    selectedRadio = val;
                                  });
                                },
                                activeColor: Colors.blue,
                              ),
                            ),
                           Theme(
                              data: Theme.of(context).copyWith(
                                unselectedWidgetColor: Colors.grey,
                                disabledColor: Colors.grey,
                              ),
                              child: RadioListTile(
                                value: 40,
                                groupValue: selectedRadio,
                                title: Text("MXN \t\t \$",
                                    style: TextStyle(
                                        fontSize: 14, )),
                                onChanged: (dynamic val) {
                                  setState(() {
                                    selectedRadio = val;
                                  });
                                },
                                activeColor: Colors.blue,
                              ),
                            ),
                           Theme(
                              data: Theme.of(context).copyWith(
                                unselectedWidgetColor: Colors.grey,
                                disabledColor: Colors.grey,
                              ),
                              child: RadioListTile(
                                value: 41,
                                groupValue: selectedRadio,
                                title: Text("MYR \t\t RM",
                                    style: TextStyle(
                                        fontSize: 14, )),
                                onChanged: (dynamic val) {
                                  setState(() {
                                    selectedRadio = val;
                                  });
                                },
                                activeColor: Colors.blue,
                              ),
                            ),
                           Theme(
                              data: Theme.of(context).copyWith(
                                unselectedWidgetColor: Colors.grey,
                                disabledColor: Colors.grey,
                              ),
                              child: RadioListTile(
                                value: 42,
                                groupValue: selectedRadio,
                                title: Text("NGN \t\t ₦",
                                    style: TextStyle(
                                        fontSize: 14, )),
                                onChanged: (dynamic val) {
                                  setState(() {
                                    selectedRadio = val;
                                  });
                                },
                                activeColor: Colors.blue,
                              ),
                            ),
                           Theme(
                              data: Theme.of(context).copyWith(
                                unselectedWidgetColor: Colors.grey,
                                disabledColor: Colors.grey,
                              ),
                              child: RadioListTile(
                                value: 43,
                                groupValue: selectedRadio,
                                title: Text("NIO \t\t C\$",
                                    style: TextStyle(
                                        fontSize: 14, )),
                                onChanged: (dynamic val) {
                                  setState(() {
                                    selectedRadio = val;
                                  });
                                },
                                activeColor: Colors.blue,
                              ),
                            ),
                           Theme(
                              data: Theme.of(context).copyWith(
                                unselectedWidgetColor: Colors.grey,
                                disabledColor: Colors.grey,
                              ),
                              child: RadioListTile(
                                value: 44,
                                groupValue: selectedRadio,
                                title: Text("NOK \t\t Kr",
                                    style: TextStyle(
                                        fontSize: 14, )),
                                onChanged: (dynamic val) {
                                  setState(() {
                                    selectedRadio = val;
                                  });
                                },
                                activeColor: Colors.blue,
                              ),
                            ),
                           Theme(
                              data: Theme.of(context).copyWith(
                                unselectedWidgetColor: Colors.grey,
                                disabledColor: Colors.grey,
                              ),
                              child: RadioListTile(
                                value: 45,
                                groupValue: selectedRadio,
                                title: Text("NZD \t\t \$",
                                    style: TextStyle(
                                        fontSize: 14, )),
                                onChanged: (dynamic val) {
                                  setState(() {
                                    selectedRadio = val;
                                  });
                                },
                                activeColor: Colors.blue,
                              ),
                            ),
                           Theme(
                              data: Theme.of(context).copyWith(
                                unselectedWidgetColor: Colors.grey,
                                disabledColor: Colors.grey,
                              ),
                              child: RadioListTile(
                                value: 46,
                                groupValue: selectedRadio,
                                title: Text("OMR \t\t ر.ع.",
                                    style: TextStyle(
                                        fontSize: 14, )),
                                onChanged: (dynamic val) {
                                  setState(() {
                                    selectedRadio = val;
                                  });
                                },
                                activeColor: Colors.blue,
                              ),
                            ),
                           Theme(
                              data: Theme.of(context).copyWith(
                                unselectedWidgetColor: Colors.grey,
                                disabledColor: Colors.grey,
                              ),
                              child: RadioListTile(
                                value: 47,
                                groupValue: selectedRadio,
                                title: Text("PAB \t\t \$",
                                    style: TextStyle(
                                        fontSize: 14, )),
                                onChanged: (dynamic val) {
                                  setState(() {
                                    selectedRadio = val;
                                  });
                                },
                                activeColor: Colors.blue,
                              ),
                            ),
                           Theme(
                              data: Theme.of(context).copyWith(
                                unselectedWidgetColor: Colors.grey,
                                disabledColor: Colors.grey,
                              ),
                              child: RadioListTile(
                                value: 48,
                                groupValue: selectedRadio,
                                title: Text("PEN \t\t S/.",
                                    style: TextStyle(
                                        fontSize: 14, )),
                                onChanged: (dynamic val) {
                                  setState(() {
                                    selectedRadio = val;
                                  });
                                },
                                activeColor: Colors.blue,
                              ),
                            ),
                           Theme(
                              data: Theme.of(context).copyWith(
                                unselectedWidgetColor: Colors.grey,
                                disabledColor: Colors.grey,
                              ),
                              child: RadioListTile(
                                value: 49,
                                groupValue: selectedRadio,
                                title: Text("PHP \t\t ₱",
                                    style: TextStyle(
                                        fontSize: 14, )),
                                onChanged: (dynamic val) {
                                  setState(() {
                                    selectedRadio = val;
                                  });
                                },
                                activeColor: Colors.blue,
                              ),
                            ),
                           Theme(
                              data: Theme.of(context).copyWith(
                                unselectedWidgetColor: Colors.grey,
                                disabledColor: Colors.grey,
                              ),
                              child: RadioListTile(
                                value: 50,
                                groupValue: selectedRadio,
                                title: Text("PKR \t\t Rs",
                                    style: TextStyle(
                                        fontSize: 14, )),
                                onChanged: (dynamic val) {
                                  setState(() {
                                    selectedRadio = val;
                                  });
                                },
                                activeColor: Colors.blue,
                              ),
                            ),
                           Theme(
                              data: Theme.of(context).copyWith(
                                unselectedWidgetColor: Colors.grey,
                                disabledColor: Colors.grey,
                              ),
                              child: RadioListTile(
                                value: 51,
                                groupValue: selectedRadio,
                                title: Text("PLN \t\t zł",
                                    style: TextStyle(
                                        fontSize: 14, )),
                                onChanged: (dynamic val) {
                                  setState(() {
                                    selectedRadio = val;
                                  });
                                },
                                activeColor: Colors.blue,
                              ),
                            ),
                           Theme(
                              data: Theme.of(context).copyWith(
                                unselectedWidgetColor: Colors.grey,
                                disabledColor: Colors.grey,
                              ),
                              child: RadioListTile(
                                value: 52,
                                groupValue: selectedRadio,
                                title: Text("PYG \t\t Gs.",
                                    style: TextStyle(
                                        fontSize: 14, )),
                                onChanged: (dynamic val) {
                                  setState(() {
                                    selectedRadio = val;
                                  });
                                },
                                activeColor: Colors.blue,
                              ),
                            ),
                           Theme(
                              data: Theme.of(context).copyWith(
                                unselectedWidgetColor: Colors.grey,
                                disabledColor: Colors.grey,
                              ),
                              child: RadioListTile(
                                value: 53,
                                groupValue: selectedRadio,
                                title: Text("RON \t\t lei",
                                    style: TextStyle(
                                        fontSize: 14, )),
                                onChanged: (dynamic val) {
                                  setState(() {
                                    selectedRadio = val;
                                  });
                                },
                                activeColor: Colors.blue,
                              ),
                            ),
                          Theme(
                              data: Theme.of(context).copyWith(
                                unselectedWidgetColor: Colors.grey,
                                disabledColor: Colors.grey,
                              ),
                              child: RadioListTile(
                                value: 54,
                                groupValue: selectedRadio,
                                title: Text("RUB \t\t ₽",
                                    style: TextStyle(
                                        fontSize: 14, )),
                                onChanged: (dynamic val) {
                                  setState(() {
                                    selectedRadio = val;
                                  });
                                },
                                activeColor: Colors.blue,
                              ),
                            ),
                          Theme(
                              data: Theme.of(context).copyWith(
                                unselectedWidgetColor: Colors.grey,
                                disabledColor: Colors.grey,
                              ),
                              child: RadioListTile(
                                value: 55,
                                groupValue: selectedRadio,
                                title: Text("RWF \t\t R₣",
                                    style: TextStyle(
                                        fontSize: 14, )),
                                onChanged: (dynamic val) {
                                  setState(() {
                                    selectedRadio = val;
                                  });
                                },
                                activeColor: Colors.blue,
                              ),
                            ),
                          Theme(
                              data: Theme.of(context).copyWith(
                                unselectedWidgetColor: Colors.grey,
                                disabledColor: Colors.grey,
                              ),
                              child: RadioListTile(
                                value: 19,
                                groupValue: selectedRadio,
                                title: Text("SAR \t\t ر.س",
                                    style: TextStyle(
                                        fontSize: 14, )),
                                onChanged: (dynamic val) {
                                  setState(() {
                                    selectedRadio = val;
                                  });
                                },
                                activeColor: Colors.blue,
                              ),
                            ),
                          Theme(
                              data: Theme.of(context).copyWith(
                                unselectedWidgetColor: Colors.grey,
                                disabledColor: Colors.grey,
                              ),
                              child: RadioListTile(
                                value: 56,
                                groupValue: selectedRadio,
                                title: Text("SEK \t\t Kr",
                                    style: TextStyle(
                                        fontSize: 14, )),
                                onChanged: (dynamic val) {
                                  setState(() {
                                    selectedRadio = val;
                                  });
                                },
                                activeColor: Colors.blue,
                              ),
                            ),
                          Theme(
                              data: Theme.of(context).copyWith(
                                unselectedWidgetColor: Colors.grey,
                                disabledColor: Colors.grey,
                              ),
                              child: RadioListTile(
                                value: 57,
                                groupValue: selectedRadio,
                                title: Text("SGD \t\t \$",
                                    style: TextStyle(
                                        fontSize: 14, )),
                                onChanged: (dynamic val) {
                                  setState(() {
                                    selectedRadio = val;
                                  });
                                },
                                activeColor: Colors.blue,
                              ),
                            ),
                          Theme(
                              data: Theme.of(context).copyWith(
                                unselectedWidgetColor: Colors.grey,
                                disabledColor: Colors.grey,
                              ),
                              child: RadioListTile(
                                value: 58,
                                groupValue: selectedRadio,
                                title: Text("SVC \t\t ₡",
                                    style: TextStyle(
                                        fontSize: 14, )),
                                onChanged: (dynamic val) {
                                  setState(() {
                                    selectedRadio = val;
                                  });
                                },
                                activeColor: Colors.blue,
                              ),
                            ),
                          Theme(
                              data: Theme.of(context).copyWith(
                                unselectedWidgetColor: Colors.grey,
                                disabledColor: Colors.grey,
                              ),
                              child: RadioListTile(
                                value: 59,
                                groupValue: selectedRadio,
                                title: Text("THB \t\t ฿",
                                    style: TextStyle(
                                        fontSize: 14, )),
                                onChanged: (dynamic val) {
                                  setState(() {
                                    selectedRadio = val;
                                  });
                                },
                                activeColor: Colors.blue,
                              ),
                            ),
                          Theme(
                              data: Theme.of(context).copyWith(
                                unselectedWidgetColor: Colors.grey,
                                disabledColor: Colors.grey,
                              ),
                              child: RadioListTile(
                                value: 60,
                                groupValue: selectedRadio,
                                title: Text("TND \t\t د.ت",
                                    style: TextStyle(
                                        fontSize: 14, )),
                                onChanged: (dynamic val) {
                                  setState(() {
                                    selectedRadio = val;
                                  });
                                },
                                activeColor: Colors.blue,
                              ),
                            ),
                          Theme(
                              data: Theme.of(context).copyWith(
                                unselectedWidgetColor: Colors.grey,
                                disabledColor: Colors.grey,
                              ),
                              child: RadioListTile(
                                value: 61,
                                groupValue: selectedRadio,
                                title: Text("TRY \t\t ₺",
                                    style: TextStyle(
                                        fontSize: 14, )),
                                onChanged: (dynamic val) {
                                  setState(() {
                                    selectedRadio = val;
                                  });
                                },
                                activeColor: Colors.blue,
                              ),
                            ),
                          Theme(
                              data: Theme.of(context).copyWith(
                                unselectedWidgetColor: Colors.grey,
                                disabledColor: Colors.grey,
                              ),
                              child: RadioListTile(
                                value: 62,
                                groupValue: selectedRadio,
                                title: Text("TWD \t\t \$",
                                    style: TextStyle(
                                        fontSize: 14, )),
                                onChanged: (dynamic val) {
                                  setState(() {
                                    selectedRadio = val;
                                  });
                                },
                                activeColor: Colors.blue,
                              ),
                            ),
                          Theme(
                              data: Theme.of(context).copyWith(
                                unselectedWidgetColor: Colors.grey,
                                disabledColor: Colors.grey,
                              ),
                              child: RadioListTile(
                                value: 63,
                                groupValue: selectedRadio,
                                title: Text("TZS \t\t Ts",
                                    style: TextStyle(
                                        fontSize: 14, )),
                                onChanged: (dynamic val) {
                                  setState(() {
                                    selectedRadio = val;
                                  });
                                },
                                activeColor: Colors.blue,
                              ),
                            ),
                          Theme(
                              data: Theme.of(context).copyWith(
                                unselectedWidgetColor: Colors.grey,
                                disabledColor: Colors.grey,
                              ),
                              child: RadioListTile(
                                value: 64,
                                groupValue: selectedRadio,
                                title: Text("UAH \t\t ₴",
                                    style: TextStyle(
                                        fontSize: 14, )),
                                onChanged: (dynamic val) {
                                  setState(() {
                                    selectedRadio = val;
                                  });
                                },
                                activeColor: Colors.blue,
                              ),
                            ),
                          Theme(
                              data: Theme.of(context).copyWith(
                                unselectedWidgetColor: Colors.grey,
                                disabledColor: Colors.grey,
                              ),
                              child: RadioListTile(
                                value: 65,
                                groupValue: selectedRadio,
                                title: Text("USD \t\t \$",
                                    style: TextStyle(
                                        fontSize: 14, )),
                                onChanged: (dynamic val) {
                                  setState(() {
                                    selectedRadio = val;
                                  });
                                },
                                activeColor: Colors.blue,
                              ),
                            ),
                          Theme(
                              data: Theme.of(context).copyWith(
                                unselectedWidgetColor: Colors.grey,
                                disabledColor: Colors.grey,
                              ),
                              child: RadioListTile(
                                value: 66,
                                groupValue: selectedRadio,
                                title: Text("UYU \t\t \$U",
                                    style: TextStyle(
                                        fontSize: 14, )),
                                onChanged: (dynamic val) {
                                  setState(() {
                                    selectedRadio = val;
                                  });
                                },
                                activeColor: Colors.blue,
                              ),
                            ),
                          Theme(
                              data: Theme.of(context).copyWith(
                                unselectedWidgetColor: Colors.grey,
                                disabledColor: Colors.grey,
                              ),
                              child: RadioListTile(
                                value: 67,
                                groupValue: selectedRadio,
                                title: Text("VEF \t\t Bs.",
                                    style: TextStyle(
                                        fontSize: 14, )),
                                onChanged: (dynamic val) {
                                  setState(() {
                                    selectedRadio = val;
                                  });
                                },
                                activeColor: Colors.blue,
                              ),
                            ),
                          Theme(
                              data: Theme.of(context).copyWith(
                                unselectedWidgetColor: Colors.grey,
                                disabledColor: Colors.grey,
                              ),
                              child: RadioListTile(
                                value: 68,
                                groupValue: selectedRadio,
                                title: Text("VND \t\t ₫",
                                    style: TextStyle(
                                        fontSize: 14, )),
                                onChanged: (dynamic val) {
                                  setState(() {
                                    selectedRadio = val;
                                  });
                                },
                                activeColor: Colors.blue,
                              ),
                            ),
                          Theme(
                              data: Theme.of(context).copyWith(
                                unselectedWidgetColor: Colors.grey,
                                disabledColor: Colors.grey,
                              ),
                              child: RadioListTile(
                                value: 69,
                                groupValue: selectedRadio,
                                title: Text("XOF \t\t CF",
                                    style: TextStyle(
                                        fontSize: 14, )),
                                onChanged: (dynamic val) {
                                  setState(() {
                                    selectedRadio = val;
                                  });
                                },
                                activeColor: Colors.blue,
                              ),
                            ),
                          Theme(
                              data: Theme.of(context).copyWith(
                                unselectedWidgetColor: Colors.grey,
                                disabledColor: Colors.grey,
                              ),
                              child: RadioListTile(
                                value: 70,
                                groupValue: selectedRadio,
                                title: Text("ZAR \t\t R",
                                    style: TextStyle(
                                        fontSize: 14, )),
                                onChanged: (dynamic val) {
                                  setState(() {
                                    selectedRadio = val;
                                  });
                                },
                                activeColor: Colors.blue,
                              ),
                            ),
                          
                          ],
                        ),
              ),
                    
            ),
          ),
            ],
          );
        },
      ),
    );
  }
}
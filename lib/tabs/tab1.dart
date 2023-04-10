import 'package:flutter/material.dart';

class FirstTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Row(
          children: [
            Container(
              height: 50,
              width: 50,
              color: Colors.black,
              child: Image.asset("assets/icons/cash.png"),
            ),
            Expanded(
              child: Container(
                height: 50,
                color: Colors.blue,
                child: Text("Loan 1",style: TextStyle(fontSize: 20),)),
            ),
          ],
        ),
       Row(
          children: [
            Container(
              height: 50,
              width: 50,
              color: Colors.black,
              child: Image.asset("assets/icons/cash.png"),
            ),
            Expanded(
              child: Container(
                height: 50,
                color: Colors.blue,
                child: Text("Salary",style: TextStyle(fontSize: 20),)),
            ),
          ],
        ),
     
      Row(
          children: [
            Container(
              height: 50,
              width: 50,
              color: Colors.black,
              child: Image.asset("assets/icons/cash.png"),
            ),
            Expanded(
              child: Container(
                height: 50,
                color: Colors.blue,
                child: Text("Sales",style: TextStyle(fontSize: 20),)),
            ),
          ],
        ),
     

      ],
    );
    
  }
}

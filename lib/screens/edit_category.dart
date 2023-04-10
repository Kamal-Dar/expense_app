import 'package:expense_app/screens/Icon_screen.dart';
import 'package:flutter/material.dart';

import '../tabs/tab1.dart';
import '../tabs/tab2.dart';



class EditCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white10,
        appBar: AppBar(
          backgroundColor: Colors.white10,
          title: Text("Edit Category",style: TextStyle(color: Colors.white),),
          bottom: TabBar(
            tabs: [
              Tab(icon: Text("Income",style: TextStyle(color: Colors.white),)),
              Tab(icon: Text("Expense",style: TextStyle(color: Colors.white),)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            FirstTab(),
            SecondTab(),
            
          ],
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(16.0),
          child:GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>IconScreen()));
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 30,
                    width: 50,
                    child: Image.asset("assets/images/news.png"),
                  ),
                  Text("Icon Shop",style: TextStyle(color: Colors.white),)
                ],
              ),
            ),
          )
        )
      ),
    );
  }
}

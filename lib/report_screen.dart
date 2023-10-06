import 'package:flutter/material.dart';
class Location_Screen extends StatelessWidget {
  const Location_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/reportPage.jpg"),
              fit: BoxFit.cover,
            )
        ),
        child: SafeArea(child: Column(
          children: [
            Expanded(flex: 1, child: SizedBox()),
            Expanded(flex: 1, child: Container(child: Row(
              children: [
                SizedBox(width: 2,),
                Text("9°",
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 85,color: Colors.white),),
                SizedBox(width: 5,),
                Text("☁", style: TextStyle(fontSize: 85,color: Colors.white))
              ],
            ),)),
            Expanded(flex: 1, child: SizedBox()),
            Expanded(flex: 3,
              child: Row(
                children: [
                  SizedBox(width: 3,),
                  Expanded(
                    child: Text("You'll need a dick to fuck!",
                      style: TextStyle(fontWeight: FontWeight.w900, fontSize: 65,color: Colors.white),
                      textAlign: TextAlign.right,),
                  ),
                  SizedBox(width: 3,),
                ],
              ),)
          ],
        )),
      ),
    );
  }
}

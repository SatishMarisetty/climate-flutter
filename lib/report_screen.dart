import 'package:climate/variables.dart';
import 'package:flutter/material.dart';
import 'launching_screen.dart';
import 'city_screen.dart';
class Location_Screen extends StatefulWidget {
  const Location_Screen({super.key});

  @override
  State<Location_Screen> createState() => _Location_ScreenState();
}

class _Location_ScreenState extends State<Location_Screen> {
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: (){
                      setLocation(context);
                    },
                    child: Icon(Icons.near_me,color: Colors.white,size: 50,)),
                Text("$name",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 25,color: Colors.white),),
                GestureDetector(
                  onTap: ()
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>CityPage()));
                    },
                    child: Icon(Icons.location_city,color: Colors.white,size: 50,)),
              ],
            ),
            Expanded(flex: 1, child: SizedBox()),
            Expanded(flex: 1, child: Row(
              children: [
                SizedBox(width: 2,),
                Text("$temperature°",
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 80,color: Colors.white),),
                SizedBox(width: 5,),
                Text(getWeatherEmoji(temperature!), style: TextStyle(fontSize: 80))
              ],
            ),),
            Expanded(flex: 1, child: SizedBox()),
            Expanded(flex: 3,
              child: Row(
                children: [
                  SizedBox(width: 3,),
                  Expanded(
                    child: Text(getWeatherDescription(temperature!),
                      style: TextStyle(fontWeight: FontWeight.w900, fontSize: 65,color: Colors.white),
                      textAlign: TextAlign.right,),
                  ),
                  SizedBox(width: 3,),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}

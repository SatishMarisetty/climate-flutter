import 'package:flutter/material.dart';
import 'variables.dart';
import 'report_screen.dart';
import 'networking.dart';
class CityPage extends StatefulWidget {
  const CityPage({super.key});

  @override
  State<CityPage> createState() => _CityPageState();
}

class _CityPageState extends State<CityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/cityPage.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.navigate_before,color: Colors.white,size: 50,)),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.location_city,color: Colors.white,),
                  ),
                  Expanded(
                    child: TextField(
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                      border: InputBorder.none,
                      hintText: 'Enter the City name',
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                    onChanged: (City){
                        city=City;
                        },),
                  ),
                ],
              ),
            ),
            Center(
              child: TextButton(
                onPressed: (){
                  setUri(cityLocation);
                  status=1;
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Location_Screen()));
                },
                child: Text("Get Weather",style: TextStyle(fontWeight: FontWeight.w900,color: Colors.white,fontSize: 25),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

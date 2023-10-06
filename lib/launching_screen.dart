import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'location.dart' as loc;
import 'variables.dart';
import 'report_screen.dart';

class Launch extends StatefulWidget {
  const Launch({super.key});

  @override
  State<Launch> createState() => _LaunchState();
}

class _LaunchState extends State<Launch> {
  @override
  void initState()  {
    setLocation();
    super.initState();
  }
  Future<void> setLocation() async{
    try {
      Position position = await loc.determinePosition();
      lat=position.latitude;
      long=position.longitude;
    }
    catch(e)
    {
      print(e);
    }
    finally{
      print(coordinate);
      Navigator.push(context, MaterialPageRoute(builder: (context) => Location_Screen()));
    }
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: LoadingAnimationWidget.flickr(
          leftDotColor: const Color(0xFF1A1A3F),
          rightDotColor: const Color(0xFFEA3799),
          size: 200,
        ),
      ),
    );
  }
}


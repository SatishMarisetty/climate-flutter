import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'location.dart' as loc;
import 'variables.dart';
import 'networking.dart';
import 'report_screen.dart';

class Launch extends StatefulWidget {
  const Launch({super.key});

  @override
  State<Launch> createState() => _LaunchState();
}
Future<void> setLocation(BuildContext context) async{
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
    setUri(coordinate);
    status=0;
    Navigator.push(context, MaterialPageRoute(builder: (context) => Location_Screen()));
  }
}
class _LaunchState extends State<Launch> {
  @override
  void initState()  {
    setLocation(context);
    super.initState();
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


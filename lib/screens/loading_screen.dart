import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

import '../services/location.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void initState()
  {
    super.initState();
    MyLocation().checkPermit();
    getlocation();
    print("init state");
  }
  //Get location
void getlocation()async
{
  MyLocation location = MyLocation();
  await location.getLocation();
print(location.latitude);
print(location.longitude);
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
    );
  }
}

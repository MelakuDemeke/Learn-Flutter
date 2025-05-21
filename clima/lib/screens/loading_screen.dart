import 'package:flutter/material.dart';
import '../services/location.dart';
import '../services/networking.dart';

const apiKey = "c0eae1ad786d869d5ca1e672d519156a";

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  late double latitude;
  late double longitude;

  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  Future<void> getLocationData() async {
    Location location = Location();
    await location.getCurrentLocation();
    latitude = location.latitude;
    longitude = location.longitude;

    NetworkHelper networkHelper = NetworkHelper(
      url:
          'https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey',
    );
    var wetherData = await networkHelper.getData();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

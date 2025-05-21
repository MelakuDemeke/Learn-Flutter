import 'package:flutter/material.dart';
import '../services/location.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

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
    getLocation();
  }

  Future<void> getLocation() async {
    Location location = Location();
    await location.getCurrentLocation();
    latitude = location.latitude;
    longitude = location.longitude;
    getData();
  }

  Future<void> getData() async {
    http.Response response = await http.get(
      Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey',
      ),
    );
    if (response.statusCode == 200) {
      String data = response.body;

      var temp = jsonDecode(data)['main']['temp'];
      var condi = jsonDecode(data)['weather'][0]['id'];
      var city = jsonDecode(data)['name'];
      print('the temprature is $temp, and the condition is $condi in $city');
    } else {
      print('error occured');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

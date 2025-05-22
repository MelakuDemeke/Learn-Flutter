import 'package:flutter/material.dart';
import 'package:clima/utilities/constants.dart';

class CityScreen extends StatefulWidget {
  const CityScreen({super.key});

  @override
  _CityScreenState createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  late String cityName;
  final TextEditingController _cityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/city_background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back_ios, size: 50.0),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  onChanged: (value) {
                    cityName = value;
                  },
                  controller: _cityController,
                  style: TextStyle(color: Colors.black),
                  decoration: kInputDecoration,
                ),
              ),
              TextButton(
                onPressed: () {
                  String cityName = _cityController.text.trim();

                  if (cityName.isNotEmpty) {
                    Navigator.pop(context, cityName);
                  } else {
                    final snackBar = SnackBar(
                      content: Text('Please insert the city name'),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  }
                },
                child: Text('Get Weather', style: kButtonTextStyle),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

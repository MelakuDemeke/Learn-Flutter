import 'package:flutter/material.dart';
import 'screens/chat_screen.dart';
import 'screens/login_screen.dart';
import 'screens/registration_screen.dart';
import 'screens/welcome_screen.dart';

void main() => runApp(FlashChat());

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyLarge: TextStyle(color: Colors.black54),
        ),
      ),
      initialRoute: 'wellcome_screen',
      routes: {
        'wellcome_screen': (context) => WelcomeScreen(),
        'login_screen' : (context) => LoginScreen(),
        'registration_screen' : (context) => RegistrationScreen(),
        'chat_screen' : (context) => ChatScreen()
      },
    );
  }
}

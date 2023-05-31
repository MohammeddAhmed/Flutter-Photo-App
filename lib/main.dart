import 'package:app_test/modules/home/home_page.dart';
import 'package:app_test/modules/messenger/messenger_page.dart';
import 'package:app_test/modules/users/users_page.dart';
import 'package:flutter/material.dart';
import 'modules/bmi/bmi_ calculator.dart';
import 'modules/login/login_screen.dart';

void main() => runApp( MyApp());


void runApp(MyApp myApp) {}

class MyApp extends StatelessWidget {

  //constructor
  //build
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        initialRoute: '/login_screen',
        routes: {
          '/home_page' : (context) => const Home(),
          '/login_screen' : (context) => const LoginScreen(),
          '/counter_page' : (context) => const LoginScreen(),
          '/bmi_calculator' : (context) => const Bmi_Calculator(),
          '/messenger_page' : (context) => const MessengerScreen(),
          '/user_screen' : (context) => UsersScreen(),
        }
    );
  }
}

class BuildContext {}

class StatelessWidget {}
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tghtestapp/splashscreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [
    SystemUiOverlay.bottom,
  ]);  //3 line code for clear time showing entire app
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:SplashScreenn(),
      // routes: {
      //   'settings': (BuildContext ctx) => const SettingsPage(),
      //   'registration': (BuildContext ctx) => RegistrationPage(),
      // },

    );
  }
}
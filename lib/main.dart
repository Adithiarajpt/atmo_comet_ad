
import 'package:atmo_comet_ad/Helper/routehelper.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var baseTheme = ThemeData(
        brightness: Brightness.light,
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 20,
          ),
          headline2: TextStyle(
            fontSize: 18,
          ),
          headline3: TextStyle(
            fontSize: 20,
          ),
          headline4:  TextStyle(
            fontSize: 14,
          ),
          headline5: TextStyle(
            fontSize: 13,
          ),
          headline6: TextStyle(
            fontSize: 16,
          ),
          headlineLarge: TextStyle(
            fontSize: 25,
          ),
          bodyText1: TextStyle(
            fontSize: 13,
          ),
          bodyText2: TextStyle(
            fontSize: 10,
          ),
        )
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RoutHelper().initialRoute,
      routes: {
        RoutHelper().initialRoute: (context) =>  SplashScreen(),


      },
      theme: ThemeData(
          checkboxTheme:CheckboxThemeData(
            side: BorderSide(
            ),
            shape:RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5)
            ),
            fillColor: MaterialStateProperty.all(Color(0xFF2269A3)),
            checkColor: MaterialStateProperty.all(Color(0xFF2269A3)),
            overlayColor: MaterialStateProperty.all(Color(0xFF2269A3)),
          ) ,
          primaryColor:const Color(0xFF63AE34),
          secondaryHeaderColor:const Color(0xFF2269A3),
          textTheme:GoogleFonts.poppinsTextTheme(baseTheme.textTheme)
      ),
    );
  }

}

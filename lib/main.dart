import 'package:disney_plus_reimagined/view/shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:disney_plus_reimagined/view/pages/welcome.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:disney_plus_reimagined/view/shared/routes.dart' as routes;

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(
    const DisneyPlus(),
  );
  FlutterNativeSplash.remove();
}

class DisneyPlus extends StatelessWidget {
  const DisneyPlus({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Disney+ Reimagined',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "SFProDisplay",
        visualDensity: VisualDensity.comfortable,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: DPColors.white,
            elevation: 0,
            minimumSize: const Size(
              double.infinity,
              62,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                14,
              ),
            ),
          ),
        ),
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 41.05,
            fontWeight: FontWeight.w600,
            color: DPColors.white,
            height: 1.4,
          ),
          headline2: TextStyle(
            fontSize: 36.49,
            fontWeight: FontWeight.w600,
            color: DPColors.white,
            height: 1.4,
          ),
          headline3: TextStyle(
            fontSize: 32.44,
            fontWeight: FontWeight.w600,
            color: DPColors.white,
            height: 1.4,
          ),
          headline4: TextStyle(
            fontSize: 28.83,
            fontWeight: FontWeight.w600,
            color: DPColors.white,
            height: 1.4,
          ),
          headline5: TextStyle(
            fontSize: 25.63,
            fontWeight: FontWeight.w600,
            color: DPColors.white,
            height: 1.4,
          ),
          headline6: TextStyle(
            fontSize: 22.78,
            fontWeight: FontWeight.w600,
            color: DPColors.white,
            height: 1.4,
            letterSpacing: 0,
          ),
          subtitle1: TextStyle(
            fontSize: 20.25,
            fontWeight: FontWeight.w500,
            color: DPColors.white,
          ),
          subtitle2: TextStyle(
            fontSize: 18,
            color: DPColors.white,
            fontWeight: FontWeight.w400,
          ),
          bodyText1: TextStyle(
            fontSize: 16,
            color: DPColors.white,
            fontWeight: FontWeight.w400,
          ),
          bodyText2: TextStyle(
            fontSize: 14,
            color: DPColors.white,
          ),
          caption: TextStyle(),
        ),
      ),
      home: const Welcome(),
      onGenerateRoute: routes.controller,
      initialRoute: routes.welcome,
    );
  }
}

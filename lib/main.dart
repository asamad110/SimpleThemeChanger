import 'package:flutter/material.dart';
import 'package:light_and_darktheme/Provider/ThemeChangerprovider.dart';
import 'package:light_and_darktheme/Screens/LightandDarktheme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {


    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeChanger()),
      ],
      child: Builder(
          builder: (BuildContext context){
            final themeChanger = Provider.of<ThemeChanger>(context);
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              themeMode: themeChanger.themeMode,
              theme: ThemeData(
                  brightness: Brightness.light,
                primarySwatch: Colors.orange,
              ),
              darkTheme: ThemeData(
                brightness: Brightness.dark,
                primarySwatch: Colors.pink
              ),
              home: const Lightanddarktheme(),
            );
          }),
    );
  }
}

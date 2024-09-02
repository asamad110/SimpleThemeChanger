import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/ThemeChangerprovider.dart';

class Lightanddarktheme extends StatefulWidget {
  const Lightanddarktheme({super.key});

  @override
  State<Lightanddarktheme> createState() => _LightanddarkthemeState();
}

class _LightanddarkthemeState extends State<Lightanddarktheme> {
  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<ThemeChanger>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: const Text("Theme Changer",
          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
      ),
      body: Column(
        children: [
          RadioListTile<ThemeMode>(
            title: Text("Light Mode"),
              value: ThemeMode.light,
              groupValue: themeChanger.themeMode,
              onChanged: themeChanger.setTheme
          ),
          RadioListTile<ThemeMode>(
              title: Text("Dark Mode"),
              value: ThemeMode.dark,
              groupValue: themeChanger.themeMode,
              onChanged: themeChanger.setTheme
          ),
          RadioListTile<ThemeMode>(
              title: Text("System Mode"),
              value: ThemeMode.system,
              groupValue: themeChanger.themeMode,
              onChanged: themeChanger.setTheme
          ),
        ],
      ),
    );
  }
}

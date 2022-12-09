import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flex_material3/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const DemoApp());

class DemoApp extends StatefulWidget {
 const DemoApp({Key? key}) : super(key: key);

 @override
 _DemoAppState createState() => _DemoAppState();
}

class _DemoAppState extends State<DemoApp> {
 // Used to select if we use the dark or light theme, start with system mode.
 ThemeMode themeMode = ThemeMode.system;

 @override
 Widget build(BuildContext context) {
   // Select the predefined FlexScheme color scheme to use. Modify the
   // used FlexScheme enum value below to try other pre-made color schemes.
   const FlexScheme usedScheme = FlexScheme.mandyRed;

   return MaterialApp(
     debugShowCheckedModeBanner: false,
     title: 'Basic Theme Usage',
     // Use a predefined FlexThemeData.light() theme for the light theme.
     theme: FlexThemeData.light(
       colors:  myFlexScheme.light,
       fontFamily: GoogleFonts.roboto().fontFamily,
       appBarElevation: 0.5,
      //  useMaterial3: true,
       useMaterial3ErrorColors : true,
       textTheme: TextTheme()
     ),
     // Same definition for the dark theme, but using FlexThemeData.dark().
     darkTheme: FlexThemeData.dark(
       colors:  myFlexScheme.dark,
       fontFamily: GoogleFonts.roboto().fontFamily,
       appBarElevation: 2,
      //  useMaterial3: true,
       useMaterial3ErrorColors : true
     ),
     // Use the above dark or light theme based on active themeMode.
     themeMode: themeMode,
     home: MyHomePage(
     ),
   );
 }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});



  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("widget.title"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), 
    );
  }
}

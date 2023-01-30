import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  ThemeData _generarTemaClaro() {
    return FlexThemeData.light(
      colors: const FlexSchemeColor(
        primary: Color(0xff00b28c),
        primaryContainer: Color(0xffd0e4ff),
        secondary: Color(0xffeaaf0f),
        secondaryContainer: Color(0xffffdbcf),
        tertiary: Color(0xff26d8b2),
        tertiaryContainer: Color(0xff95f0ff),
        appBarColor: Color(0xffffdbcf),
        error: Color(0xffb00020),
      ),
      usedColors: 4,
      surfaceMode: FlexSurfaceMode.highScaffoldLevelSurface,
      blendLevel: 20,
      appBarOpacity: 0.98,
      appBarElevation: 4.0,
      subThemesData: const FlexSubThemesData(
        elevatedButtonSchemeColor: SchemeColor.secondary,
        elevatedButtonSecondarySchemeColor: SchemeColor.onSecondary,
        toggleButtonsSchemeColor: SchemeColor.secondary,
        switchSchemeColor: SchemeColor.primary,
        radioSchemeColor: SchemeColor.primary,
        sliderBaseSchemeColor: SchemeColor.primary,
        inputDecoratorRadius: 25.0,
        inputDecoratorUnfocusedHasBorder: false,
        chipSchemeColor: SchemeColor.primary,
        chipRadius: 30.0,
        cardRadius: 25.0,
        popupMenuRadius: 10.0,
        popupMenuElevation: 15.0,
        tabBarIndicatorSchemeColor: SchemeColor.secondary,
        navigationBarIndicatorSchemeColor: SchemeColor.primary,
      ),
      keyColors: const FlexKeyColors(
        useSecondary: true,
        keepPrimary: true,
        keepSecondary: true,
      ),
      tones: FlexTones.highContrast(Brightness.light),
      visualDensity: FlexColorScheme.comfortablePlatformDensity,
    );
  }

  ThemeData _generarTemaOscuro() {
    return FlexThemeData.dark(
      colors: const FlexSchemeColor(
        primary: Color(0xff00b28c),
        primaryContainer: Color(0xffd0e4ff),
        secondary: Color(0xffeaaf0f),
        secondaryContainer: Color(0xffffdbcf),
        tertiary: Color(0xff26d8b2),
        tertiaryContainer: Color(0xff95f0ff),
        appBarColor: Color(0xffffdbcf),
        error: Color(0xffb00020),
      ),
      usedColors: 4,
      surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
      blendLevel: 15,
      subThemesData: const FlexSubThemesData(
        textButtonSchemeColor: SchemeColor.secondary,
        // mod
        elevatedButtonSchemeColor: SchemeColor.secondary,
        elevatedButtonSecondarySchemeColor: SchemeColor.onSecondary,
        outlinedButtonSchemeColor: SchemeColor.secondary,
        // mod
        toggleButtonsSchemeColor: SchemeColor.secondary,
        // mod
        switchSchemeColor: SchemeColor.secondary,
        // mod
        checkboxSchemeColor: SchemeColor.secondary,
        // mod
        radioSchemeColor: SchemeColor.secondary,
        // mod
        sliderBaseSchemeColor: SchemeColor.secondary,
        // mod
        inputDecoratorRadius: 25.0,
        inputDecoratorUnfocusedHasBorder: false,
        chipSchemeColor: SchemeColor.secondary,
        // mod
        chipRadius: 30.0,
        cardRadius: 25.0,
        popupMenuRadius: 10.0,
        popupMenuElevation: 15.0,
        tabBarItemSchemeColor: SchemeColor.secondary,
        tabBarIndicatorSchemeColor: SchemeColor.primary,
        bottomNavigationBarSelectedLabelSchemeColor: SchemeColor.secondary,
        // mod
        bottomNavigationBarSelectedIconSchemeColor: SchemeColor.secondary,
        // mod
        navigationBarSelectedLabelSchemeColor: SchemeColor.secondary,
        // mod
        navigationBarSelectedIconSchemeColor: SchemeColor.secondary,
        // mod
        navigationBarIndicatorSchemeColor: SchemeColor.secondary, // mod
      ),
      keyColors: const FlexKeyColors(
        useSecondary: true,
      ),
      tones: FlexTones.highContrast(Brightness.dark),
      visualDensity: FlexColorScheme.comfortablePlatformDensity,
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TFG_v1',

      // modularizamos la generación del tema
      theme: _generarTemaClaro(),
      darkTheme: _generarTemaOscuro(),

      // todo configurar para que usuario elija
      themeMode: ThemeMode.system,

      home: const MyHomePage(title: 'TFG Versión 1'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeData themeData = ThemeData.light();

  @override
  void initState() {
    super.initState();
  }

  void changeTheme() {
    setState(() {
      themeData =
          themeData == ThemeData.light() ? ThemeData.dark() : ThemeData.light();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      home: MyHomePage(
        changeTheme: changeTheme,
      ),
      theme: themeData,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.changeTheme});

  final void Function() changeTheme;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Flutter Demo",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
          actions: [
            IconButton(onPressed: () {
              widget.changeTheme();
            }, icon: Icon(Icons.brightness_4))
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Heading 4",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Slider(
              value: 0,
              onChanged: (value) {},
            ),
            Icon(Icons.collections_sharp),
            Checkbox(value: true, onChanged: (vale) {}),
            TextButton(onPressed: () {}, child: Text("Text Button")),
            ElevatedButton(onPressed: () {}, child: Text("Elevated Button"))
          ],
        ));
  }
}

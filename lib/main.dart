import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Multi-Components App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Flutter-Tabbar"),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home_filled), text: "Home"),
              Tab(icon: Icon(Icons.account_box_outlined), text: "Account"),
              Tab(icon: Icon(Icons.alarm), text: "Alarm"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Icon(Icons.home)),
            Center(child: Icon(Icons.account_circle)),
            Center(child: Icon(Icons.alarm)),
          ],
        ),
      ),
    );
  }
}

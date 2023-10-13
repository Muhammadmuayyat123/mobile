import 'package:flutter/material.dart';
import 'package:latihanbersama/PageTwo.dart';
import 'package:latihanbersama/PageOne.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int indexTerpilih = 0;
  final pages = [PageOne(), PageTwo()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        selectedIndex: indexTerpilih,
        onDestinationSelected: (index) {
          setState(() {
            indexTerpilih = index;
          });
        },
        destinations: [
          NavigationDestination(icon: Icon(Icons.menu), label: "label"),
          NavigationDestination(icon: Icon(Icons.menu), label: "label")
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.amber,
        leading: Icon(Icons.menu),
        title: Text("Bapakmu"),
      ),
      body: pages[indexTerpilih],
    );
  }
}

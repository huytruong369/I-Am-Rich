import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

const String url =
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTapQ1Zk-y1FSQRTnPSMks7WcXoGj9xjskoCw&usqp=CAU';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'I am Rich',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF6200EE),
        title: const Text('I Am Rich'),
        centerTitle: true,
      ),
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Image Network',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Image(
              image: NetworkImage(url),
            ),
            const SizedBox(
              height: 19,
            ),
            const Text(
              'Image assets',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.deepPurpleAccent,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Image.asset('assets/images/diamond.jpg'),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen(), debugShowCheckedModeBanner: false);
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ImageWidget(),
          TextWidget(title: 'Davies Nyantakyi', fontSize: 30),
          SizedBox(height: 4),
          TextWidget(title: 'Flutter developer', fontSize: 18),
          SizedBox(width: 80, child: Divider()),
          CardWidget(title: '+32 498 99 99 99', icon: Icons.phone),
          CardWidget(title: 'davies.nyantakyi@outlook.com', icon: Icons.mail),
        ],
      ),
    );
  }
}

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 60,
      backgroundImage: AssetImage("assets/me.jpg"),
    );
  }
}

class TextWidget extends StatelessWidget {
  final String title;
  final double? fontSize;
  const TextWidget({super.key, required this.title, this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Text(title, style: TextStyle(fontSize: fontSize));
  }
}

class CardWidget extends StatelessWidget {
  final IconData? icon;
  final String title;
  const CardWidget({super.key, this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: ListTile(leading: Icon(icon), title: Text(title)),
    );
  }
}

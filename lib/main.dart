import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.black
      ),
      home: initialScreen(),
    );
  }
}
initialScreen() {
  return Scaffold(
    appBar: AppBar(
      title: Text("Hello Giovane")
    ),
    body: Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Hello Giovane", style: TextStyle(
                fontSize: 22,
                color: Colors.red,
                fontStyle: FontStyle.italic
                ),
              ),
              Text("Text just for meet some style properties", style: TextStyle(
                fontSize: 14,
                color: Colors.black,

                ),
              )
            ],
          )
        ],
      ),
    ),
    drawer: Drawer(
      child: Container(
        child: ListView(
          children: [
            ListTile(
              title: Text("Item 1")
            ),
            ListTile(
                title: Text("Item 2")
            ),
            ListTile(
                title: Text("Item 3")
            )
          ],
        )
      ),
    ),
    floatingActionButton: FloatingActionButton(
      backgroundColor: Colors.red,
      onPressed: (){
        print("Clicado");
      },
    ),
  );
}

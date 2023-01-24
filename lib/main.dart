import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyCustomeHomePage();
  }
}
class MyCustomeHomePage extends State<MyHomePage>{

  final titles = ["List 1", "List 2", "List 3","List 4","List 5",
    "List 6", "List 7", "List 8","List 9","List 10",];
  final subtitles = [
    "Here is list 1 subtitle",
    "Here is list 2 subtitle",
    "Here is list 3 subtitle",
    "Here is list 4 subtitle",
    "Here is list 5 subtitle",
    "Here is list 6 subtitle",
    "Here is list 7 subtitle",
    "Here is list 8 subtitle",
    "Here is list 9 subtitle",
    "Here is list 10 subtitle",
  ];
  final icons = [Icons.ac_unit, Icons.access_alarm, Icons.access_time];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ListView.builder(
          itemCount: titles.length,
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          itemBuilder: (BuildContext context, int index) {
            return Card (
              child: ListTile(
                  onTap: () {
                    // Scaffold.of(context).showSnackBar(SnackBar(
                    //   content: Text(titles[index] + ' pressed!'),
                    // ));
                  },
                  leading: const Icon(Icons.list),
                  trailing: const Icon(Icons.star),
                  title: Text(titles[index]),
                  subtitle: Text(subtitles[index]),
              ),
            );
          }),
    );

  }

}

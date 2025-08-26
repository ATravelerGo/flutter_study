import 'package:flutter/material.dart';
import 'package:flutter_study/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // getTimeData();

    WorldTime instance = WorldTime(
      location: 'Berlin',
      flag: 'germany.png',
      url: 'Europe/Berlin',
    );
    instance.getTimeData().then((_) {
      print(instance.time);
    });
  }
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 20.0),
          title: Text("Choose a Location"),
          centerTitle: true,
          elevation: 0,
        ),
        body: ElevatedButton(
          onPressed: () =>
          {
            setState(() {
              counter++;
            }),
          },
          child: Text("add"),
        ),
      );
    }
  }

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;

  void getData() async {
    http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1')).then((
      response,
    ) {
      print("状态码: ${response.statusCode}");
      print("响应头: ${response.headers}");
      print("响应体: ${response.body}");
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
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
        onPressed: () => {
          setState(() {
            counter++;
          }),
        },
        child: Text("add"),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Flutter layout demo';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
          backgroundColor: Colors.yellow[700],
        ),
        body: Center(
          child: Column(
            children: [
              Text(
                "欢迎使用",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.w700,
                  fontSize: 50,
                  letterSpacing: 10,
                ),
              ),
              Image.network(
                'https://qcloud.dpfile.com/pc/TrdZpLN1zkXDV4oN2FH98LdVnvHj694NKQu0_KA3ul4eYxZWRPQ7CJuw-PqyZBS4.jpg',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
              Icon(Icons.ac_unit_sharp, color: Colors.yellow, size: 50),
              ElevatedButton.icon(
                onPressed: () {
                  print("点击了");
                },
                icon: Icon(Icons.email_outlined),
                label: Text("send me Emile", style: TextStyle(height: 2)),
              ),
              Container(
                // color: Colors.amber, //如果用了decoration 这个color要放到decoration里面设置
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.red,
                  border: Border.all(color: Colors.red, width: 1),
                ),
                child: Text("这是容器"),
              ),

            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('点击了');
          },
          child: Text('点我'),
          backgroundColor: Colors.deepOrange,
        ),
        backgroundColor: Colors.yellow[100],
      ),
    );
  }
}

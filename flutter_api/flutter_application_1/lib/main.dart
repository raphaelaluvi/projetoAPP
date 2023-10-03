import 'package:flutter/material.dart';

import './screens/home.dart';
import './screens/create.dart';
import './screens/details.dart';
import './screens/edit.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter + PHP CRUD',
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/create': (context) => Create(),
        '/details': (context) => Details(),
        '/edit': (context) => Edit(),
      },
    );
  }
}

class Student {
  final int id;
  final String name;
  final int age;

  Student({this.id, this.name, this.age});

  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(
      id: json['id'],
      name: json['name'],
      age: json['age'],
    );
  }

  Map<String, dynamic> toJson() => {
    'name': name,
    'age': age,
  };
}

class Env {
  static String URL_PREFIX = "http://10.0.2.2/flutter_api";
}
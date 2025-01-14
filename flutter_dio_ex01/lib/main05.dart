import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: HomePage(),
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Dio _dio = Dio();

  Todo? _todo;

  @override
  void initState() {
    super.initState();
    _fetchTodos();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: _todo == null
          ? CircularProgressIndicator()
          : Column(
              children: [
                Text('ID : ${_todo!.id}'),
                Text('userId : ${_todo!.userId}'),
                Text('title : ${_todo!.title}'),
                Text('completed : ${_todo!.completed}'),
              ],
            ),
    );
  }

  // 통신을 담당하는 메서드를 만들어 보자.
  _fetchTodos() async {
    try {
      Response response =
          await _dio.get('https://jsonplaceholder.typicode.com/todos/5');
      _todo = Todo.fromJson(response.data);
      setState(() {});

      print('----------------------------------------------------------------');
      // Map 으로 들어온 데이터를 Todo 객체를 생성해서 상태 값을 담아 보시오.
    } catch (e) {
      print('실행 시점 예외가 발생 했어요');
      print(e.toString());
    }
  }
}

class Todo {
  int? userId;
  int? id;
  String? title;
  bool? completed;

  Todo(
      {required this.userId,
      required this.id,
      required this.title,
      required this.completed});

  // dart 생성자 -> 명명된 생성자
  Todo.fromJson(Map<String, dynamic> json)
      : userId = json['userId'],
        id = json['id'],
        title = json['title'],
        completed = json['completed'];

  @override
  String toString() {
    return 'Todo{userId: $userId, id: $id, title: $title, completed: $completed}';
  }
}

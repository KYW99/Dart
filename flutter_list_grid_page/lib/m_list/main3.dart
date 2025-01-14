import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView.separated 예제'),
        ),
        body: ListViewSeparatedExample(),
      ),
    );
  }
}

class ListViewSeparatedExample extends StatelessWidget {
  final List<String> items = List.generate(20, (index) => "Item ${index + 1}");

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.star),
            title: Text(items[index]),
            subtitle: Text('This is the subtitle for ${items[index]}'),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('${items[index]} tapped')),
              );
            },
          );
        },
        separatorBuilder: (context, index) {
          return Divider(
            color: Colors.grey,
            thickness: 1,
          );
        },
        itemCount: items.length);
  }
}

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
        body: GridView.builder(
          // 방향을 지정한다
          scrollDirection: Axis.vertical,
          // 그리드의 열 개수를 고정하는 속성
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 16.0,
            mainAxisSpacing: 16.0,
          ),
          itemCount: 20,
          itemBuilder: (context, index) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Container(
                color: Colors.blue,
                child: Image.network(
                    'data:image/jpeg;base64,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',
                    fit: BoxFit.cover),
              ),
            );
          },
        ),
      ),
    );
  }
}

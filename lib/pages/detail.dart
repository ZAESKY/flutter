import 'package:flutter/material.dart';
class detail extends StatefulWidget {
  final String title;
  const detail({super.key, required this.title});

  @override
  State<detail> createState() => _detailState();
}

class _detailState extends State<detail> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('使用手册'),
        ),
        body: Text('详情页' + widget.title),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import './pdf_preview.dart';
import './detail.dart';
class list extends StatefulWidget {
  final String items;

  const list({super.key, required this.items});

  @override
  State<list> createState() => _listState();
}

class _listState extends State<list> with AutomaticKeepAliveClientMixin{
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (BuildContext ctx) {
          return new detail();
        }));
      },
      child: Card(
        child: ListTile(
          title: Text('使用手册PDF'),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

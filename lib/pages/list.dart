import 'package:flutter/material.dart';
import './detail.dart';
import './pdf_preview.dart';

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
          return new PDFViewerFromFile(filePath: '../pdf.pdf',);
        }));
      },
      child: Text('这里是列表' + widget.items),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

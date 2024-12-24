import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'dart:io';

class PDFViewerFromFile extends StatelessWidget {
  final String filePath;

  PDFViewerFromFile({required this.filePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PDF 查看器'),
      ),
      body: PDFView(
        filePath: filePath,
        enableSwipe: true,
        swipeHorizontal: true,
        autoSpacing: false,
        pageFling: false,
        onRender: (pages) {
          print('Total pages: $pages');
        },
        onError: (error) {
          print(error.toString());
        },
        onPageError: (page, error) {
          print('Page $page: ${error.toString()}');
        },
      ),
    );
  }
}

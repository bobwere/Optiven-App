import 'dart:async';
import 'dart:io';

import 'package:division/division.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_full_pdf_viewer/full_pdf_viewer_scaffold.dart';
import 'package:path_provider/path_provider.dart';

import '../../common/constants/styles.dart';

class PdfViewerPage extends StatefulWidget {
  const PdfViewerPage({Key key, this.documentUrl}) : super(key: key);

  final String documentUrl;

  @override
  _PdfViewerPageState createState() => _PdfViewerPageState();
}

class _PdfViewerPageState extends State<PdfViewerPage> {
  bool _isLoading = true;

  String pathPDF = "";

  @override
  void initState() {
    super.initState();
    createFileOfPdfUrl().then((f) {
      setState(() {
        pathPDF = f.path;
        print(pathPDF);
      });
    });
  }

  Future<File> createFileOfPdfUrl() async {
    final url = widget.documentUrl;
    final filename = url.substring(url.lastIndexOf("/") + 1);
    var request = await HttpClient().getUrl(Uri.parse(url));
    var response = await request.close();
    var bytes = await consolidateHttpClientResponseBytes(response);
    String dir = (await getApplicationDocumentsDirectory()).path;
    File file = new File('$dir/$filename');
    await file.writeAsBytes(bytes);
    setState(() => _isLoading = false);
    return file;
  }

  @override
  Widget build(BuildContext context) {
    return _isLoading
        ? Scaffold(
            appBar: AppBar(
              backgroundColor: Theme.of(context).primaryColor,
              elevation: 2,
              title: Txt('Newsletter Viewer',
                  style: kAppbarTitleStyle.clone()..textColor(Colors.white)),
              centerTitle: true,
            ),
            body: Center(child: CircularProgressIndicator()))
        : PDFViewerScaffold(
            appBar: AppBar(
              backgroundColor: Theme.of(context).primaryColor,
              elevation: 2,
              title: Txt('Newsletter Viewer',
                  style: kAppbarTitleStyle.clone()..textColor(Colors.white)),
              centerTitle: true,
            ),
            path: pathPDF);
  }
}

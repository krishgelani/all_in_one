import 'dart:io';

import 'package:all_in_one/homeProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';

class detail extends StatefulWidget {
  const detail({Key? key}) : super(key: key);

  @override
  State<detail> createState() => _detailState();
}

class _detailState extends State<detail> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if(Platform.isAndroid)
      {
        WebView.platform = AndroidWebView();
      }
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: WebView(
          initialUrl: "${Provider.of<homeProvider>(context,listen: false).data!.url}",
        ),
      ),
    );
  }
}

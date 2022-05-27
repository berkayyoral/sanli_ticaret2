import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Şanlı Ticaret',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const sanliTicaret(),
    );
  }
}

class sanliTicaret extends StatefulWidget {
  const sanliTicaret({Key? key}) : super(key: key);

  @override
  State<sanliTicaret> createState() => _sanliTicaretState();
}

class _sanliTicaretState extends State<sanliTicaret> {
  @override
  void initState() {
    super.initState();
    // Enable virtual display.
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: WebView(
        javascriptMode: JavascriptMode.unrestricted,
        initialUrl: 'https://sanlihirdavat.com',
      ),
    );
  }
}


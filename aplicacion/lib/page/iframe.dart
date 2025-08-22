import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ModernIframeWidget extends StatefulWidget {
  final String url;
  final String titulo;
  

const ModernIframeWidget({Key? key, required this.url,required this.titulo}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ModernIframeWidgetState createState() => _ModernIframeWidgetState();
}

class _ModernIframeWidgetState extends State<ModernIframeWidget> {
  // ignore: unused_field
  late WebViewController _controller;
  bool _isLoading = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.titulo),
      ),
      body: Stack(
        children: [
          WebView(
            initialUrl: widget.url,
            javascriptMode: JavascriptMode.unrestricted,
            onPageFinished: (String url) {
              setState(() {
                _isLoading = false;
              });
            },
            onWebViewCreated: (WebViewController webViewController) {
              _controller = webViewController;
            },
          ),
          if (_isLoading)
            const Center(
              child: CircularProgressIndicator(),
            ),
        ],
      ),
    );
  }
}

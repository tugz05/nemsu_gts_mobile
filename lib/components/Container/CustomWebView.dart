import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PopUpWebView extends StatefulWidget {
  final String urlText;
  const PopUpWebView({Key? key, required this.urlText}) : super(key: key);

  @override
  _PopUpWebViewState createState() => _PopUpWebViewState();
}

class _PopUpWebViewState extends State<PopUpWebView> {


  @override
  Widget build(BuildContext context) {
    return Dialog(
      // Add your dialog properties here
      child: Container(
        width: 350,
        height: 720,
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: WebViewWidget(controller: 
              WebViewController()
            ..setJavaScriptMode(JavaScriptMode.unrestricted)
            ..setBackgroundColor(const Color(0x00000000))
            ..setNavigationDelegate(
    NavigationDelegate(
      onProgress: (int progress) {
        // Update loading bar.
      },
      onPageStarted: (String url) {},
      onPageFinished: (String url) {},
      onWebResourceError: (WebResourceError error) {},
      onNavigationRequest: (NavigationRequest request) {
        if (request.url.startsWith('https://www.youtube.com/')) {
          return NavigationDecision.prevent;
        }
        return NavigationDecision.navigate;
      },
    ),
  )
  ..loadRequest(Uri.parse(widget.urlText))),
            ),
            SizedBox(height: 16.0),
            Align(
              alignment: Alignment.bottomRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Implement action for the first button
                      Navigator.pop(context);
                    },
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll<Color>(Color.fromRGBO(13, 110, 253, 1)),
                    ),
                                        child: Text('Okay', 
                    style: GoogleFonts.inter(
                      fontStyle: FontStyle.normal,
                      color: Colors.white
                    ),),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
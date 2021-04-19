import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LaunchSpotifyDemo extends StatefulWidget {
  @override
  _LaunchSpotifyDemoState createState() => _LaunchSpotifyDemoState();
}

class _LaunchSpotifyDemoState extends State<LaunchSpotifyDemo> {
  @override
  Future<void> _launched;
  String phoneNumber = '';
  String _launchUrl = 'https://www.google.com';

  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'header_key': 'header_value'},
      );
    } else {
      throw '$url açılamadı.';
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Spotify"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: const Text('Launch in Browser'),
              onPressed: () {
                _launchInBrowser(_launchUrl);
              },
            )
          ],
        ),
      ),
    );
  }
}

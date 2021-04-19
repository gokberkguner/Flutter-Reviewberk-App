import 'package:flutter/material.dart';
import 'package:flutter_reviewberk_static/album_liste.dart';
import 'package:url_launcher/url_launcher.dart';

import 'models/album_reviews.dart';

//import 'models/album_reviews.dart';

class AlbumDetay extends StatefulWidget {
  int gelenIndex;

  AlbumDetay(this.gelenIndex);

  @override
  _AlbumDetayState createState() => _AlbumDetayState();
}

class _AlbumDetayState extends State<AlbumDetay> {
  AlbumReviews secilenAlbum;

  @override
  Future<void> _launched;
  String phoneNumber = '';
  String _launchUrl = 'https://www.google.com';

  /*
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
  */

  Future<void> _launchInApp(String url) async {
    await launch('${secilenAlbum.urlName}');
  }

  /*
  Future<void> _launchUniversalLinkIos(String url) async {
    if (await canLaunch(url)) {
      final bool nativeAppLaunchSucceeded = await launch(
        url,
        forceWebView: false,
        universalLinksOnly: true,
      );
      if (!nativeAppLaunchSucceeded) {
        await launch(url, forceWebView: true);
      }
    }
  }
  */

  void initState() {
    super.initState();
    secilenAlbum = AlbumListe.allReviews[widget.gelenIndex];
  }

  @override
  Widget build(BuildContext context) {
    return NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (OverscrollIndicatorNotification overscroll) {
        overscroll.disallowGlow();
        return;
      },
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // _launchInBrowser(_launchUrl);
            _launchInApp(_launchUrl);
            //_launchUniversalLinkIos('https://youtube.com');
          },
          backgroundColor: Colors.black,
          foregroundColor: Colors.green,
          child: Icon(Icons.music_note_outlined),
        ),
        body: CustomScrollView(
          primary: false,
          slivers: [
            SliverAppBar(
              expandedHeight: 250,
              pinned: true,
              primary: true,
              backgroundColor: Colors.black,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text(
                  '"${secilenAlbum.albumName}"',
                  style: TextStyle(
                      color: Colors.white, backgroundColor: Colors.black),
                ),
                background: Image.asset(
                  '${secilenAlbum.fotograf}',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.all(6.0),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: Colors.black38,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Text(
                        '${secilenAlbum.authorName}',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      Text(
                        "FOTOLAR",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Container(
                        width: double.infinity,
                        height: 100.0,
                        child: ListView(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/motorheadstory.png"),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Image.asset(
                                    "assets/images/motorheadstory.png"),
                              ),
                            ]),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

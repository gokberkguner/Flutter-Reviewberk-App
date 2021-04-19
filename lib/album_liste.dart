import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_reviewberk_static/albumdetay.dart';
import 'package:flutter_reviewberk_static/utils/albumreviews_string.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

import 'models/album_reviews.dart';
//

class AlbumListe extends StatelessWidget {
  static List<AlbumReviews> allReviews;

  @override
  Widget build(BuildContext context) {
    allReviews = veriKaynaginiHazirla();

    return Scaffold(
      appBar: AppBar(
        title: Text("#albumreviews"),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        foregroundColor: Colors.green,
        child: Icon(Icons.alternate_email_outlined),
        onPressed: () {
          showToast(
              ' - Sosyal Medya Hesaplarım - \n Instagram: gokberkguner \n Albüm İnceleme Sayfası: reviewberk. \n Youtube: Gökberk Güner',
              context: context,
              animation: StyledToastAnimation.slideFromLeftFade,
              reverseAnimation: StyledToastAnimation.slideToTopFade,
              toastHorizontalMargin: 0.0,
              position: StyledToastPosition(
                  align: Alignment.bottomLeft, offset: 20.0),
              startOffset: Offset(-1.0, 0.0),
              reverseEndOffset: Offset(0.0, 0.0),
              //Toast duration   animDuration * 2 <= duration
              duration: Duration(seconds: 4),
              //Animation duration   animDuration * 2 <= duration
              animDuration: Duration(seconds: 1),
              curve: Curves.linearToEaseOut,
              reverseCurve: Curves.fastOutSlowIn);
        },
      ),
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (OverscrollIndicatorNotification overscroll) {
          overscroll.disallowGlow();
          return;
        },
        child: listeyiHazirla(),
      ),
    );
  }

  List<AlbumReviews> veriKaynaginiHazirla() {
    List<AlbumReviews> reviews = [];
    for (int i = 0; i < Strings.GRUP_ADI.length; i++) {
      AlbumReviews addedReview = AlbumReviews(
        Strings.ALBUM_FOTOGRAF[i],
        Strings.GRUP_ADI[i],
        Strings.ALBUM_ADI[i],
        Strings.ALBUM_OZELLIKLERI[i],
        Strings.URL_NAMES[i],
        Strings.AUTHORS_NAME[i],
      );
      reviews.add(addedReview);
    }
    return reviews;
  }

  Widget listeyiHazirla() {
    return Card(
      child: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return tekSatirInceleme(context, index);
        },
        itemCount: allReviews.length,
      ),
    );
  }

  Widget tekSatirInceleme(BuildContext context, int index) {
    return GridView.count(
      scrollDirection: Axis.vertical,
      crossAxisCount: 1,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AlbumDetay(index)));
            },
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage("${allReviews[index].fotograf}"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Transform.translate(
                offset: Offset(0, 45),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 57),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[900]),
                  child: Center(
                    child: Text(
                      "${allReviews[index].getGroupName}\n'${allReviews[index].getAlbumName}'\nYazar: ${allReviews[index].getOzellikler}",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

/*
  // - ListView Versiyon -
  ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.white70, width: 1),
                    borderRadius: BorderRadius.circular(10)),
                elevation: 8,
                color: Colors.black38,
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AlDeMotorhead1()));
                  },
                  leading: Image.asset(
                    "assets/images/gokberk.png",
                    width: 64,
                    height: 64,
                  ),
                  title: Text(
                    "Motörhead",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                  subtitle: Text(
                    "A.O.S. - 8 Kasım 1980",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey),
                  ),
                  trailing: Icon(Icons.album_outlined, color: Colors.green),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.white70, width: 1),
                    borderRadius: BorderRadius.circular(10)),
                elevation: 8,
                color: Colors.black38,
                child: ListTile(
                  onTap: () {},
                  leading: Image.asset(
                    "assets/images/gokberk.png",
                    width: 64,
                    height: 64,
                  ),
                  title: Text(
                    "RHCP",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                  subtitle: Text(
                    "Californi. - 8 Haziran 1999",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey),
                  ),
                  trailing: Icon(Icons.album_outlined, color: Colors.green),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.white70, width: 1),
                    borderRadius: BorderRadius.circular(10)),
                elevation: 8,
                color: Colors.black38,
                child: ListTile(
                  onTap: () {},
                  leading: Image.asset(
                    "assets/images/gokberk.png",
                    width: 64,
                    height: 64,
                  ),
                  title: Text(
                    "Black Sabbath",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Colors.white),
                  ),
                  subtitle: Text(
                    "Paranoid - 18 Eylül 1970",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey),
                  ),
                  trailing: Icon(Icons.album_outlined, color: Colors.green),
                ),
              ),
            ),
          ],
        )
   */

/*
  Widget listeCard() {
    return ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.white70, width: 1),
                borderRadius: BorderRadius.circular(10)),
            elevation: 8,
            color: Colors.black38,
            child: ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AlDeMotorhead1()));
              },
              leading: Image.asset(
                "assets/images/gokberk.png",
                width: 64,
                height: 64,
              ),
              title: Text(
                "Motörhead",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
              subtitle: Text(
                "A.O.S. - 8 Kasım 1980",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey),
              ),
              trailing: Icon(Icons.album_outlined, color: Colors.green),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.white70, width: 1),
                borderRadius: BorderRadius.circular(10)),
            elevation: 8,
            color: Colors.black38,
            child: ListTile(
              onTap: () {},
              leading: Image.asset(
                "assets/images/gokberk.png",
                width: 64,
                height: 64,
              ),
              title: Text(
                "RHCP",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
              subtitle: Text(
                "Californi. - 8 Haziran 1999",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey),
              ),
              trailing: Icon(Icons.album_outlined, color: Colors.green),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.white70, width: 1),
                borderRadius: BorderRadius.circular(10)),
            elevation: 8,
            color: Colors.black38,
            child: ListTile(
              onTap: () {},
              leading: Image.asset(
                "assets/images/gokberk.png",
                width: 64,
                height: 64,
              ),
              title: Text(
                "Black Sabbath",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
              subtitle: Text(
                "Paranoid - 18 Eylül 1970",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey),
              ),
              trailing: Icon(Icons.album_outlined, color: Colors.green),
            ),
          ),
        ),
      ],
    );
    */
}

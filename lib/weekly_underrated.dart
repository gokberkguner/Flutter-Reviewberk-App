import 'package:flutter/material.dart';
import 'package:flutter_reviewberk_static/utils/weeklyunderratedreviews_string.dart';
import 'package:flutter_reviewberk_static/weekly_detay.dart';

import 'models/weekly_underrated_reviews.dart';

class WeeklyUnderrated extends StatelessWidget {
  static List<WeeklyUnderratedReviews> allReviews;

  @override
  Widget build(BuildContext context) {
    allReviews = veriKaynaginiHazirla();

    return Scaffold(
      appBar: AppBar(
        title: Text("#weeklyunderrated"),
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

  List<WeeklyUnderratedReviews> veriKaynaginiHazirla() {
    List<WeeklyUnderratedReviews> reviews = [];
    for (int i = 0; i < Strings2.GRUP_ADI.length; i++) {
      WeeklyUnderratedReviews addedReview = WeeklyUnderratedReviews(
        Strings2.GRUP_FOTOGRAF[i],
        Strings2.WEEKLY_DATE[i],
        Strings2.GRUP_ADI[i],
        Strings2.AUTHORS_NAME[i],
        Strings2.URL_NAMES[i],
        Strings2.GRUP_OZELLIKLERI[i],
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

  /*
  Card(
          elevation: 24,
          child: GridView.count(
            scrollDirection: Axis.vertical,
            crossAxisCount: 2,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    /*
                    border: Border.all(
                        style: BorderStyle.solid, color: Colors.white),
                    */
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage("assets/images/noumena.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Transform.translate(
                    offset: Offset(0, 45),
                    child: Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 57),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black),
                      child: Center(
                        child: Text(
                          "31/03/2021\n'Noumena'\nYazar: Gökberk Güner",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage("assets/images/ayreon.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Transform.translate(
                    offset: Offset(0, 45),
                    child: Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 57),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[900]),
                      child: Center(
                        child: Text(
                          "07/04/2021\n'Ayreon'\nYazar: Beril Kadıköylü",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
   */

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
                  MaterialPageRoute(builder: (context) => WeeklyDetay(index)));
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
                      "${allReviews[index].getDate}\n'${allReviews[index].getGroupName}'\nYazar: ${allReviews[index].getAuthorName}",
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
}

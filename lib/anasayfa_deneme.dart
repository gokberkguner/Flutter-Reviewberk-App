import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_reviewberk_static/album_liste.dart';
import 'package:flutter_reviewberk_static/fotolar.dart';
import 'package:flutter_reviewberk_static/main_drawer.dart';
import 'package:flutter_reviewberk_static/models/components/storybtn.dart';
import 'package:flutter_reviewberk_static/models/data/storydata.dart';
import 'package:flutter_reviewberk_static/weekly_underrated.dart';

class Anasayfa2 extends StatefulWidget {
  @override
  _Anasayfa2State createState() => _Anasayfa2State();
}

class _Anasayfa2State extends State<Anasayfa2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Center(
          child: Image.asset(
            "assets/images/reviewberkorta.png",
            width: 180,
            height: 180,
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.all(10),
            child: Card(
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(10)),
              child: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/applogo.png")),
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: MainDrawer(),
      ),
      body: Products(),
    );
  }
}

class MainPageStory extends StatefulWidget {
  @override
  _MainPageStoryState createState() => _MainPageStoryState();
}

class _MainPageStoryState extends State<MainPageStory> {
  List<StoryData> stories = [
    new StoryData(
        "Gökberk Güner",
        "https://scontent-frx5-1.cdninstagram.com/v/t51.2885-19/159908203_458336411979022_5423349792559385846_n.jpg?_nc_ht=scontent-frx5-1.cdninstagram.com&_nc_ohc=JJspsPMXzTgAX-MlWIW&edm=AKralEIAAAAA&ccb=7-4&oh=bb7df8b1056a73a513cad6490c280260&oe=608EEE56&_nc_sid=5e3072",
        "assets/images/aceofspadesstory.png"),
    new StoryData(
        "Beril Kadıköylü",
        "https://scontent-frx5-1.cdninstagram.com/v/t51.2885-19/146842710_206850377850739_4738293288712414718_n.jpg?_nc_ht=scontent-frx5-1.cdninstagram.com&_nc_ohc=DiLuyPftptwAX_sSiCY&edm=AKralEIAAAAA&ccb=7-4&oh=1163dced234e9dd1b457f2fbb02932a3&oe=608E2E4E&_nc_sid=5e3072",
        "https://images.unsplash.com/photo-1598214012909-9b1874af3cfc?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=632&q=80"),
    new StoryData(
        "Beril Kadıköylü",
        "https://randomuser.me/api/portraits/women/15.jpg",
        "https://images.unsplash.com/photo-1598214012909-9b1874af3cfc?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=632&q=80"),
    new StoryData(
        "Gökberk Güner",
        "https://randomuser.me/api/portraits/men/15.jpg",
        "https://images.unsplash.com/photo-1598214012909-9b1874af3cfc?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=632&q=80"),
    new StoryData(
        "Beril Kadıköylü",
        "https://randomuser.me/api/portraits/women/16.jpg",
        "https://images.unsplash.com/photo-1598214012909-9b1874af3cfc?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=632&q=80"),
    new StoryData(
        "Beril Kadıköylü",
        "https://randomuser.me/api/portraits/men/16.jpg",
        "https://images.unsplash.com/photo-1598214012909-9b1874af3cfc?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=632&q=80"),
    new StoryData(
        "Beril Kadıköylü",
        "https://randomuser.me/api/portraits/women/17.jpg",
        "https://images.unsplash.com/photo-1598214012909-9b1874af3cfc?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=632&q=80"),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 100.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                storyButton(stories[0], context),
                storyButton(stories[1], context),
                //storyButton(stories[2], context),
                //storyButton(stories[3], context),
                //storyButton(stories[4], context)
              ],
            ),
          ),
          Divider(
            indent: 4,
            endIndent: 4,
            thickness: 4,
          ),
        ],
      ),
    );
  }
}

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  List<StoryData> stories = [
    new StoryData(
        "Gökberk Güner",
        "https://scontent-frx5-1.cdninstagram.com/v/t51.2885-19/159908203_458336411979022_5423349792559385846_n.jpg?_nc_ht=scontent-frx5-1.cdninstagram.com&_nc_ohc=JJspsPMXzTgAX-MlWIW&edm=AKralEIAAAAA&ccb=7-4&oh=bb7df8b1056a73a513cad6490c280260&oe=608EEE56&_nc_sid=5e3072",
        "assets/images/aceofspadesstory.png"),
    new StoryData(
        "Beril Kadıköylü",
        "https://scontent-frx5-1.cdninstagram.com/v/t51.2885-19/146842710_206850377850739_4738293288712414718_n.jpg?_nc_ht=scontent-frx5-1.cdninstagram.com&_nc_ohc=DiLuyPftptwAX_sSiCY&edm=AKralEIAAAAA&ccb=7-4&oh=1163dced234e9dd1b457f2fbb02932a3&oe=608E2E4E&_nc_sid=5e3072",
        "assets/images/ayreonstory.png"),
    new StoryData(
        "Beril Kadıköylü",
        "https://randomuser.me/api/portraits/women/15.jpg",
        "https://images.unsplash.com/photo-1598214012909-9b1874af3cfc?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=632&q=80"),
    new StoryData(
        "Gökberk Güner",
        "https://randomuser.me/api/portraits/men/15.jpg",
        "https://images.unsplash.com/photo-1598214012909-9b1874af3cfc?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=632&q=80"),
    new StoryData(
        "Beril Kadıköylü",
        "https://randomuser.me/api/portraits/women/16.jpg",
        "https://images.unsplash.com/photo-1598214012909-9b1874af3cfc?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=632&q=80"),
    new StoryData(
        "Beril Kadıköylü",
        "https://randomuser.me/api/portraits/men/16.jpg",
        "https://images.unsplash.com/photo-1598214012909-9b1874af3cfc?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=632&q=80"),
    new StoryData(
        "Beril Kadıköylü",
        "https://randomuser.me/api/portraits/women/17.jpg",
        "https://images.unsplash.com/photo-1598214012909-9b1874af3cfc?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=632&q=80"),
  ];

  @override
  Widget build(BuildContext context) {
    return NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (OverscrollIndicatorNotification overscroll) {
        overscroll.disallowGlow();
        return;
      },
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 100.0,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      storyButton(stories[0], context),
                      storyButton(stories[1], context),
                      //storyButton(stories[2], context),
                      //storyButton(stories[3], context),
                      //storyButton(stories[4], context)
                    ],
                  ),
                ),
                Divider(
                  indent: 4,
                  endIndent: 4,
                  thickness: 4,
                ),
              ],
            ),
            Expanded(
              child: Card(
                borderOnForeground: true,
                child: GridView.count(
                  shrinkWrap: false,
                  crossAxisCount: 1,
                  primary: false,
                  padding: EdgeInsets.all(20),
                  crossAxisSpacing: 30,
                  mainAxisSpacing: 30,
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      height: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            colors: [
                              Colors.black.withOpacity(.4),
                              Colors.black.withOpacity(.2),
                            ],
                          ),
                        ),
                        child: Column(
                          children: <Widget>[
                            Transform.translate(
                              offset: Offset(-50, 20),
                              child: Container(
                                height: 100,
                                width: 200,
                                margin: EdgeInsets.symmetric(horizontal: 70),
                                decoration: BoxDecoration(
                                  color: Colors.grey[900],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Container(
                                  margin: EdgeInsets.all(10),
                                  child: Text(
                                    "Uygulamaya Hoşgeldin!",
                                    style: TextStyle(
                                        fontSize: 24,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 40,
                              margin: EdgeInsets.symmetric(horizontal: 40),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Container(
                                  margin: EdgeInsets.all(10),
                                  child: Text(
                                    "Albüm incelemelerini okuyabilir,",
                                    style: TextStyle(
                                        color: Colors.grey[900],
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 40,
                              margin: EdgeInsets.symmetric(horizontal: 40),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Container(
                                  margin: EdgeInsets.all(10),
                                  child: Text(
                                    "kendine yeni gruplar katabilir,",
                                    style: TextStyle(
                                        color: Colors.grey[900],
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 40,
                              margin: EdgeInsets.symmetric(horizontal: 40),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Container(
                                  margin: EdgeInsets.all(10),
                                  child: Text(
                                    "ve genel kültürünü artırabilirsin.",
                                    style: TextStyle(
                                        color: Colors.grey[900],
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 70,
                              margin: EdgeInsets.symmetric(horizontal: 40),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Container(
                                  margin: EdgeInsets.all(10),
                                  child: Text(
                                    "Aşağıya kaydırarak gezintiye başla.\n      Şimdiden keyifli okumalar!",
                                    style: TextStyle(
                                        color: Colors.grey[900],
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AlbumListe()));
                      },
                      child: Container(
                        width: double.infinity,
                        height: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage("assets/images/albumcovers.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                                begin: Alignment.bottomRight,
                                colors: [
                                  Colors.black.withOpacity(.4),
                                  Colors.black.withOpacity(.2),
                                ]),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Container(
                                height: 50,
                                margin: EdgeInsets.symmetric(horizontal: 70),
                                decoration: BoxDecoration(
                                  color: Colors.grey[900],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Container(
                                    margin: EdgeInsets.all(10),
                                    child: Text(
                                      "#albumreviews",
                                      style: TextStyle(
                                          fontSize: 24,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Container(
                                height: 50,
                                margin: EdgeInsets.symmetric(horizontal: 40),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Container(
                                    margin: EdgeInsets.all(10),
                                    child: Text(
                                      "Albümler hakkında bilinmeyenler.",
                                      style: TextStyle(
                                          color: Colors.grey[900],
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    /*
                    SizedBox(
                      height: 30,
                    ),
                     */
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => WeeklyUnderrated()));
                      },
                      child: Container(
                        width: double.infinity,
                        height: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/images/underratedgruplar1.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                                begin: Alignment.bottomRight,
                                colors: [
                                  Colors.black.withOpacity(.4),
                                  Colors.black.withOpacity(.2),
                                ]),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Container(
                                height: 50,
                                margin: EdgeInsets.symmetric(horizontal: 50),
                                decoration: BoxDecoration(
                                  color: Colors.grey[900],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Container(
                                    margin: EdgeInsets.all(10),
                                    child: Text(
                                      "#weeklyunderrated",
                                      style: TextStyle(
                                          fontSize: 24,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Container(
                                height: 50,
                                margin: EdgeInsets.symmetric(horizontal: 40),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Container(
                                    margin: EdgeInsets.all(10),
                                    child: Text(
                                      "Keşfedilmeyi bekleyen gruplar, bi' bak.",
                                      style: TextStyle(
                                          color: Colors.grey[900],
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OldButGold()));
                      },
                      child: Container(
                        width: double.infinity,
                        height: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage("assets/images/bandfotos.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                                begin: Alignment.bottomRight,
                                colors: [
                                  Colors.black.withOpacity(.4),
                                  Colors.black.withOpacity(.2),
                                ]),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Container(
                                height: 50,
                                margin: EdgeInsets.symmetric(horizontal: 90),
                                decoration: BoxDecoration(
                                  color: Colors.grey[900],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Container(
                                    margin: EdgeInsets.all(10),
                                    child: Text(
                                      "#photostory",
                                      style: TextStyle(
                                          fontSize: 24,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Container(
                                height: 50,
                                margin: EdgeInsets.symmetric(horizontal: 40),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Container(
                                    margin: EdgeInsets.all(10),
                                    child: Text(
                                      "Gruplara ait hikayesi olan fotoğraflar.",
                                      style: TextStyle(
                                          color: Colors.grey[900],
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_media_buttons/social_media_buttons.dart';
import 'package:url_launcher/url_launcher.dart';

class MainDrawer extends StatefulWidget {
  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  @override
  Future<void> _launched;
  String phoneNumber = '';
  String _launchUrl = 'https://www.google.com';

  @override
  Future<void> _launchInApp(String url) async {
    await launch("https://www.instagram.com/reviewberk/");
  }

  Future<void> _launchInApp2(String url) async {
    await launch(
        "https://open.spotify.com/user/i8cpd9334d8hajfcj2c60zams?si=kLNJPcF6Sd2bhacB4cJiNw");
  }

  Future<void> _launchInApp3(String url) async {
    await launch("https://www.youtube.com/channel/UCkZ93_pQJ6DFyXmL4SYDElw");
  }

  Future<void> _launchInApp4(String url) async {
    await launch("https://www.instagram.com/gokberkguner/");
  }

  Future<void> _launchInApp5(String url) async {
    await launch(
        "https://open.spotify.com/user/hckqpp6ziwqfc87lwy24ixn4n?si=TArN3DiKQ5yKQk-bKjccYA");
  }

  Future<void> _launchInApp6(String url) async {
    await launch("https://www.youtube.com/channel/UCVDdjUfU7C1rnByrggTUcBQ");
  }

  Future<void> _launchInApp7(String url) async {
    await launch("https://www.instagram.com/years2of0silence/");
  }

  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: Padding(
            padding: EdgeInsets.only(top: 50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20.0,
                ),
                CircleAvatar(
                  radius: 55,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage("assets/images/gokberk.png"),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Image.asset(
                  "assets/images/gokberkguner.png",
                  width: 100,
                  height: 70,
                ),

                //
                Container(
                  width: 250,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      colors: [
                        Colors.black.withOpacity(.4),
                        Colors.black.withOpacity(.2),
                      ],
                    ),
                  ),
                  child: NotificationListener<OverscrollIndicatorNotification>(
                    onNotification:
                        (OverscrollIndicatorNotification overscroll) {
                      overscroll.disallowGlow();
                      return;
                    },
                    child: SingleChildScrollView(
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.all(15),
                          child: Text(
                            "Merhaba, ben Gökberk.\n\nÜsküdar Üniversitesi Yazılım Mühendisliği bölümünde eğitim görmekteyim.\n\nAynı zamanda sıkı bir Rock ve Metal dinleyicisiyim.\n\nDavul çalmaktan sonra albümler dinlemek ve hakkında bir şeyler yazmak, konuşmak en büyük hobilerimden biri.\n\nYouTube kanalımın haricinde, burada da yazılarıma ve benim haricimdeki arkadaşlarımızın değerli 'review'larına erişebilirsiniz.\n\nAşağıda sosyal medya hesaplarımız mevcut.\nTakip etmek isterseniz buradayız.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        ),
        Divider(
          indent: 10,
          endIndent: 10,
          thickness: 4,
        ),
        ListTile(
          onTap: () {
            _launchInApp(_launchUrl);
          },
          leading: Icon(
            SocialMediaIcons.instagram,
          ),
          title: Text("Reviewberk profili."),
        ),
        Divider(
          indent: 10,
          endIndent: 10,
          thickness: 4,
        ),
        ListTile(
          onTap: () {
            _launchInApp2(_launchUrl);
          },
          leading: Icon(
            SocialMediaIcons.spotify,
            color: Colors.green,
          ),
          title: Text("Gökberk Güner - Spotify"),
        ),
        ListTile(
          onTap: () {
            _launchInApp3(_launchUrl);
          },
          leading: Icon(
            SocialMediaIcons.youtube,
          ),
          title: Text("Gökberk Güner - YouTube"),
        ),
        ListTile(
          onTap: () {
            _launchInApp4(_launchUrl);
          },
          leading: Icon(SocialMediaIcons.instagram),
          title: Text("Gökberk Güner - Instagram"),
        ),
        Divider(
          indent: 10,
          endIndent: 10,
          thickness: 4,
        ),
        SizedBox(
          height: 40,
        ),
        Text(
          "Gökberk Güner - 2021",
          style: TextStyle(color: Colors.grey),
        )
      ],
    );
  }
}

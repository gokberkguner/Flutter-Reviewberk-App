import 'package:flutter/material.dart';
import 'package:flutter_reviewberk_static/models/components/storybtn.dart';
import 'package:flutter_reviewberk_static/models/data/storydata.dart';

class MainPageStory extends StatefulWidget {
  @override
  _MainPageStoryState createState() => _MainPageStoryState();
}

class _MainPageStoryState extends State<MainPageStory> {
  List<StoryData> stories = [
    new StoryData(
        "Beril Kadıköylü",
        "https://randomuser.me/api/portraits/women/14.jpg",
        "https://images.unsplash.com/photo-1598214012909-9b1874af3cfc?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=632&q=80"),
    new StoryData(
        "Gökberk Güner",
        "https://randomuser.me/api/portraits/men/14.jpg",
        "https://images.unsplash.com/photo-1598214012909-9b1874af3cfc?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=632&q=80"),
    new StoryData(
        "Beril Kadıköylü",
        "https://randomuser.me/api/portraits/women/15.jpg",
        "https://images.unsplash.com/photo-1598214012909-9b1874af3cfc?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=632&q=80"),
    new StoryData(
        "Beril Kadıköylü",
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
    return Scaffold(
      /*
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

       */
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 20.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                storyButton(stories[0], context),
                storyButton(stories[1], context),
                storyButton(stories[2], context),
                storyButton(stories[3], context),
                storyButton(stories[4], context)
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

import 'package:flutter/material.dart';
import 'package:flutter_reviewberk_static/models/data/storydata.dart';
import 'package:flutter_reviewberk_static/models/screen/storview.dart';

Widget storyButton(StoryData story, BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Padding(
        padding: EdgeInsets.only(left: 20.0, right: 20.0),
        child: InkWell(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          onTap: () {
            // NAVIGATION
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => StoryView(
                          story: story,
                        )));
          },
          child: Container(
            width: 70.0,
            height: 70.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              border: Border.all(color: Colors.green, width: 2.0),
            ),
            child: Padding(
              padding: EdgeInsets.all(3.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  image: DecorationImage(
                    image: NetworkImage(story.avatar),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      SizedBox(
        height: 6.0,
      ),
      Text(
        story.authorName,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
      ),
    ],
  );
}

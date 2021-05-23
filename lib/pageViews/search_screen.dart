import 'package:flutter/material.dart';
import 'package:instagram_ui/models/profile_post_model.dart';
import 'package:instagram_ui/models/search_model.dart';

import '../color_constants.dart';

class SearchScreen extends StatelessWidget {
  static const id = 'searchScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kScaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                  top: 20.0, left: 10.0, bottom: 10.0, right: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.70,
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          hintStyle: TextStyle(
                            color: Colors.white,
                          ),
                          labelStyle: TextStyle(
                            color: Colors.white,
                          ),
                          hintText: 'Search',
                          border: UnderlineInputBorder()),
                    ),
                  ),
                  Icon(
                    Icons.settings_overscan,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: searchCategories.map((filter) {
                  return Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide(width: 0.8, color: Colors.white),
                        top: BorderSide(width: 0.8, color: Colors.white),
                        left: BorderSide(width: 0.8, color: Colors.white),
                        bottom: BorderSide(width: 0.8, color: Colors.white),
                      ),
                    ),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          filter['icon'],
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.01,
                        ),
                        Text(
                          filter['text'],
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
            Container(
              margin: EdgeInsets.all(3),
              height: MediaQuery.of(context).size.height * 0.45,
              width: double.infinity,
              child: Image.asset(
                'assets/images/10.jpeg',
                fit: BoxFit.cover,
              ),
            ),
            GridView(
              padding: EdgeInsets.all(0),
              shrinkWrap: true,
              physics: ScrollPhysics(),
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              children: posts.map((img) {
                return Container(
                  margin: EdgeInsets.all(3),
                  height: MediaQuery.of(context).size.width / 3.3,
                  width: MediaQuery.of(context).size.width / 3.3,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(2),
                    child: Image.asset(
                      img.imagePath,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}

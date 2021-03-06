import 'package:flutter/material.dart';
import 'package:instagram_ui/color_constants.dart';
import 'package:instagram_ui/models/profile_post_model.dart';
import 'package:instagram_ui/utils/profile_post_grid_view.dart';

class ProfileScreen extends StatefulWidget {
  static const id = 'profileScreen';

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  double xOffset = 0;
  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kScaffoldBackgroundColor,
        title: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'princeVegeta',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            Icon(
              Icons.arrow_drop_down,
            ),
          ],
        ),
        actions: [
          Icon(Icons.menu),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: AnimatedContainer(
        decoration: BoxDecoration(color: kScaffoldBackgroundColor),
        duration: Duration(milliseconds: 200),
        transform: Matrix4.translationValues(xOffset, 0, 0),
        padding: EdgeInsets.only(top: 18, bottom: 5, left: 10.0),
        height: 1000,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // Container(
              //   width: double.infinity,
              //   height: MediaQuery.of(context).size.height * 0.07,
              //   padding: EdgeInsets.only(left: 15),
              //   decoration: BoxDecoration(
              //     color: kPrimaryColor,
              //     border: Border(
              //       bottom: BorderSide(
              //         width: 1,
              //         color: kShadowColor,
              //       ),
              //     ),
              //   ),
              //   child: Row(
              //     //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: <Widget>[
              //       Align(
              //         alignment: Alignment.centerLeft,
              //         child: Text(
              //           'doomslayer',
              //           style: TextStyle(color: Colors.white, fontSize: 18),
              //         ),
              //       ),
              //       Icon(
              //         Icons.arrow_drop_down,
              //       ),
              //       SizedBox(
              //         width: MediaQuery.of(context).size.width * 0.50,
              //       ),
              //     IconButton(
              //               icon: Icon(Icons.menu),
              //               onPressed: () {
              //                 setState(() {
              //                   xOffset = -250;
              //                   isDrawerOpen = true;
              //                 });
              //               },
              //             )
              //     ],
              //   ),
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 8.0,
                          bottom: 0,
                        ),
                        child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 50.0,
                              backgroundColor: Colors.white,
                              backgroundImage:
                                  AssetImage('assets/images/user0.png'),
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 0.025,
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: 1.0,
                        bottom: 13.0,
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: kScaffoldBackgroundColor, width: 4.0),
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.white,
                          ),
                          child: Icon(
                            Icons.add,
                            size: 21.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        posts.length.toString(),
                        style: kNumberStyle,
                      ),
                      Text(
                        'Posts',
                        style: kDescStyle,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        '1M',
                        style: kNumberStyle,
                      ),
                      Text(
                        'Followers',
                        style: kDescStyle,
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        '0',
                        style: kNumberStyle,
                      ),
                      Text(
                        'Following',
                        style: kDescStyle,
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Prince Vegeta',
                    style: kPeopleId,
                  ),
                  Text(
                    'Prince of All Saiyans',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              Center(
                child: MaterialButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  disabledColor: Colors.white,
                  child: Text(
                    'Edit Profile',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),

              GridView(
                physics: ScrollPhysics(),
                shrinkWrap: true,
                children: posts.map((img) {
                  return ProfilePostGridView(img.imagePath);
                }).toList(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

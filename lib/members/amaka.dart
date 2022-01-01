import 'package:flutter/material.dart';
import 'package:live_r_app/members/GroupMembers.dart';
// ignore: import_of_legacy_library_into_null_safe, library_prefixes
// url launcher to use a sort of achor <a></a> tag
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;

// change class name to member<int> eg Member2
class Amaka extends StatefulWidget {
  const Amaka({Key? key}) : super(key: key);

// change state name to member<int>state eg Member2State
  @override
  _AmakaState createState() => _AmakaState();
}

class _AmakaState extends State<Amaka> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          // appbar title as member name
          amaka.name,
          style: const TextStyle(
            color: Colors.white,
            fontFamily: 'Century Gothic',
            fontSize: 20.0,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xff011A2D),
      ),
      backgroundColor: const Color(0xff02243D),
      body: Container(
        padding: const EdgeInsets.only(
          top: 30.0,
          left: 30.0,
          right: 30.0,
          bottom: 20.0,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // member image
              CircleAvatar(
                radius: 60.0,
                backgroundImage: AssetImage(amaka.image),
              ),
              const Divider(
                color: Colors.transparent,
              ), // give space between top and bottom
              const Divider(
                color: Colors.transparent,
              ), // give space between top and bottom
              Container(
                child: Text(
                  amaka
                      .about, // member description/about from class member
                  style: const TextStyle(
                    color: Colors.white,
                    fontFamily: 'Century Gothic',
                  ),
                ),
              ),
              const Divider(
                color: Colors.transparent,
              ), // give as much possible space between top and bottom
              Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.only(top: 10.0),
                child: const Text(
                  'LIKES',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    fontFamily: 'Century Gothic',
                    // fontSize: 20.0,
                  ),
                ),
              ),
              const Divider(
                color: Colors.transparent,
              ), // give spave between top and bottom
              // row of likes
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    // like item contianer
                    Container(
                      child: Column(
                        children: const <Widget>[
                          // like item image
                          CircleAvatar(
                            radius: 20.0,
                            backgroundImage: AssetImage(
                              'image/pink_headset.jpg', // like image
                            ),
                          ),
                          Divider(
                            color: Colors.transparent,
                          ), // give spave between top and bottom
                          Text(
                            'Music', // like decription one word
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Century Gothic',
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20.0),
                      child: Column(
                        children: const <Widget>[
                          // like item image
                          CircleAvatar(
                            radius: 20.0,
                            backgroundImage: AssetImage(
                              'image/sneakers.jpg', // like image
                            ),
                          ),
                          Divider(
                            color: Colors.transparent,
                          ), // give spave between top and bottom
                          Text(
                            'Sneakers', // like decription one word
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Century Gothic',
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20.0),
                      child: Column(
                        children: const <Widget>[
                          // like item image
                          CircleAvatar(
                            radius: 20.0,
                            backgroundImage: AssetImage(
                              'image/netflix.png', // like image
                            ),
                          ),
                          Divider(
                            color: Colors.transparent,
                          ), // give spave between top and bottom
                          Text(
                            'Movies', // like decription one word
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Century Gothic',
                            ),
                          ),
                        ],
                      ),
                    ),

                    // like item contianer
                    Container(
                      margin: const EdgeInsets.only(left: 20.0),
                      child: Column(
                        children: const <Widget>[
                          // like item image
                          CircleAvatar(
                            radius: 20.0,
                            backgroundImage: AssetImage(
                              'image/LightBulb.jpg', // like image
                            ),
                          ),
                          Divider(
                            color: Colors.transparent,
                          ), // give spave between top and bottom
                          Text(
                            'Design and Graphics', // like decription one word
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Century Gothic',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(
                color: Colors.transparent,
              ), // give spave between top and bottom
              //
              // dislikes heading contianer
              //
              const Align(
                alignment: Alignment.topLeft,
                //
                // dislikes heading
                //
                child: Text(
                  'DISLIKES',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    fontFamily: 'Century Gothic',
                    // fontSize: 20.0,
                  ),
                ),
              ),
              const Divider(
                color: Colors.transparent,
              ),
              //
              // dislikes row
              //
              Row(
                children: [
                  //
                  // dislike 1
                  //
                  Container(
                    child: Column(
                      children: const [
                        CircleAvatar(
                          radius: 20.0,

                          backgroundImage: AssetImage('image/cat.png'),
                        ),
                         Divider(
                          color: Colors.transparent,
                        ),
                         Text(
                          'Cats',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Century Gothic',
                          ),
                        ),
                      ],
                    ),
                  ),
                  //
                  // dislike 1
                  //
                  //
                  // dislike 2
                  //
                  Container(
                    margin: const EdgeInsets.only(left: 20.0),
                    child: Column(
                      children: const [
                        CircleAvatar(
                          radius: 20.0,
                          backgroundImage: AssetImage(
                            'image/shawarma.jpg', // like image
                          ),
                        ),
                        Divider(
                          color: Colors.transparent,
                        ),
                        Text(
                          'shawarma',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Century Gothic',
                          ),
                        ),
                      ],
                    ),
                  ),
                  //
                  // dislike 2
                  //
                ],
              ),
              const Divider(
                color: Colors.transparent,
              ), // give as much possible space between top and bottom
              Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.only(top: 10.0),
                child: const Text(
                  'CONTACT',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    fontFamily: 'Century Gothic',
                    fontSize: 16.0,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 5.0),
                height: 30.0,
                child: TextButton(
                  onPressed: () {
                    // using the url launcher
                    // for phone number
                    UrlLauncher.launch(('tel:${amaka.phone}'));
                  },
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Text(amaka.phone),
                  ),
                ),
              ),
              Container(
                height: 45.0,
                child: TextButton(
                  onPressed: () {
                    // using the url launcher
                    // for email
                    UrlLauncher.launch(('mailto:${amaka.email}'));
                  },
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Text(amaka.email),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

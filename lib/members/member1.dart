import 'package:flutter/material.dart';
import 'package:live_r_app/members/GroupMembers.dart';
// ignore: import_of_legacy_library_into_null_safe, library_prefixes
// url launcher to use a sort of achor <a></a> tag
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;

// change class name to member<int> eg Member2
class Member1 extends StatefulWidget {
  const Member1({Key? key}) : super(key: key);

// change state name to member<int>state eg Member2State
  @override
  _Member1State createState() => _Member1State();
}

class _Member1State extends State<Member1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          // appbar title as member name
          precious.name,
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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 40.0,
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
                  backgroundImage: AssetImage(precious.image),
                ),
                const Divider(
                  color: Colors.transparent,
                ), // give space between top and bottom
                const Divider(
                  color: Colors.transparent,
                ), // give space between top and bottom
                Container(
                  child: Text(
                    precious
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
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
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
                Row(
                  children: <Widget>[
                    // like item contianer
                    Container(
                      child: Column(
                        children: const <Widget>[
                          // like item image
                          CircleAvatar(
                            radius: 20.0,
                            backgroundImage: AssetImage(
                              'images/logo.png', // like image
                            ),
                          ),
                          Divider(
                            color: Colors.transparent,
                          ), // give spave between top and bottom
                          Text(
                            'text', // like decription one word
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
                      margin: EdgeInsets.only(left: 20.0),
                      child: Column(
                        children: const <Widget>[
                          // like item image
                          CircleAvatar(
                            radius: 20.0,
                            backgroundImage: AssetImage(
                              'images/logo.png', // like image
                            ),
                          ),
                          Divider(
                            color: Colors.transparent,
                          ), // give spave between top and bottom
                          Text(
                            'text', // like decription one word
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
                        children: [
                          CircleAvatar(
                            radius: 20.0,
                            backgroundImage: AssetImage(precious.image),
                          ),
                          const Divider(
                            color: Colors.transparent,
                          ),
                          const Text(
                            'text',
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
                        children: [
                          CircleAvatar(
                            radius: 20.0,
                            backgroundImage: AssetImage(precious.image),
                          ),
                          const Divider(
                            color: Colors.transparent,
                          ),
                          const Text(
                            'text',
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
                      UrlLauncher.launch(('tel:${precious.phone}'));
                    },
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: Text(precious.phone),
                    ),
                  ),
                ),
                Container(
                  height: 45.0,
                  child: TextButton(
                    onPressed: () {
                      // using the url launcher
                      // for email
                      UrlLauncher.launch(('mailto:${precious.email}'));
                    },
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: Text(precious.email),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

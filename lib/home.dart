// first page the user sees after splash screen
// holds the profile page and home page in it

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:live_r_app/HomePageData.dart';
import 'package:live_r_app/my_flutter_app_icons.dart';
import 'package:live_r_app/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  final screens = [
    const HomePageData(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        top: false,
        // clip overflow content
        child: ClipRect(
          child: Scaffold(
            // the bottom nav
            bottomNavigationBar: CurvedNavigationBar(
              key: navigationKey,
              backgroundColor: Colors.transparent,
              height: 60.0,
              animationCurve: Curves.easeInOut,
              animationDuration: const Duration(milliseconds: 500),
              color: const Color(0xff011A2D),
              items: const [
                Icon(
                  MyFlutterApp.home,
                  size: 25.0,
                  color: Colors.white,
                ),
                Icon(
                  Icons.person,
                  size: 25.0,
                  color: Colors.white,
                ),
              ],
              index: index,
              onTap: (index) => setState(() => this.index = index),
            ),
            extendBody: true,
            appBar: AppBar(
              systemOverlayStyle: SystemUiOverlayStyle(
                // Status bar color
                statusBarColor: Color(0xff011A2D), // For both Android + iOS
                // Status bar brightness (optional)
                statusBarIconBrightness:
                    Brightness.light, // For Android (dark icons)
                statusBarBrightness: Brightness.dark, // For iOS (dark icons)
              ),
              title: const Text(
                'LIVE R',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Caesar',
                  fontSize: 30.0,
                ),
              ),
              centerTitle: true,
              backgroundColor: const Color(0xff011A2D),
            ),
            // backgroundColor: Color(0xff3C1215),
            // backgroundColor: Color(0xff011A2D),
            backgroundColor: const Color(0xff02243D),
            body: screens[index],
          ),
        ),
      ),
    );
  }
}

// SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.fromLTRB(8.0, 20.0, 8.0, 20.0),
//           child: Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.fromLTRB(2.0, 0, 2.0, 10.0),
//                 child: Container(
//                   width: MediaQuery.of(context).size.width,
//                   height: 200,
//                   decoration: BoxDecoration(
//                     image: DecorationImage(
//                       fit: BoxFit.fill,
//                       image: AssetImage('images/liverDiagram.png'),
//                     ),
//                   ),
//                 ),
//               ),
//               Divider(),
//               SingleChildScrollView(
//                 child: Column(
//                   children: [
//                     Container(
//                       padding: EdgeInsets.only(
//                         bottom: 2.5, // Space between underline and text
//                       ),
//                       decoration: BoxDecoration(
//                           border: Border(
//                               bottom: BorderSide(
//                         color: Colors.white,
//                         width: 1.0, // Underline thickness
//                       ))),
//                       child: Text(
//                         'WHAT IS A LIVER? WHAT IS ITS FUNCTION?',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontFamily: 'Century Gothic',
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Text(
//                         '    The liver plays an important role in many bodily functions from protein production and blood clotting to cholesterol, glucose (sugar), and iron metabolism.',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontFamily: 'Century Gothic',
//                         ),
//                       ),
//                     ),
//                     Divider(),
//                     Text(
//                       'What Causes Liver Disease?',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontFamily: 'Century Gothic',
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Text(
//                         '     Many diseases and conditions can affect the liver, for example, certain drugs like excessive amounts of acetaminophen, and acetaminophen combination medications like Vicodin and Norco, as well as statins, cirrhosis, alcohol abuse, hepatitis A, B, C, D, and E, infectious mononucleosis (Epstein Barr virus), nonalcoholic fatty liver disease (NASH), and iron overload (hemochromatosis).',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontFamily: 'Century Gothic',
//                         ),
//                       ),
//                     ),
//                     Divider(),
//                     Container(
//                       padding: EdgeInsets.only(
//                         bottom: 2.5, // Space between underline and text
//                       ),
//                       decoration: BoxDecoration(
//                           border: Border(
//                               bottom: BorderSide(
//                         color: Colors.white,
//                         width: 1.0, // Underline thickness
//                       ))),
//                       child: Text(
//                         'What are the signs and symptoms of liver disease?',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontFamily: 'Century Gothic',
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Text(
//                         '     Many diseases and conditions can affect the liver, for example, certain drugs like excessive amounts of acetaminophen, and acetaminophen combination medications like Vicodin and Norco, as well as statins, cirrhosis, alcohol abuse, hepatitis A, B, C, D, and E, infectious mononucleosis (Epstein Barr virus), nonalcoholic fatty liver disease (NASH), and iron overload (hemochromatosis).',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontFamily: 'Century Gothic',
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),

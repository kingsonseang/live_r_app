import 'package:flutter/material.dart';
import 'package:live_r_app/homepage.dart';
import 'package:page_transition/page_transition.dart';

class DefaultPage extends StatefulWidget {
  const DefaultPage({Key? key}) : super(key: key);

  @override
  _DefaultPageState createState() => _DefaultPageState();
}

class _DefaultPageState extends State<DefaultPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.8,
        color: Colors.transparent,
        child: Column(
          children: <Widget>[
            // image
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.25,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('images/img1.jpg'),
                ),
              ),
            ),
            const Divider(),
            // text contianer
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              // text
              child: const Text(
                'data',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Century Gothic',
                ),
              ),
            ),
            const Divider(
              color: Colors.transparent,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: const EdgeInsets.only(left: 20.0),
                decoration: BoxDecoration(
                    color: const Color(0xff011A2D),
                    borderRadius: BorderRadius.circular(5.0)),
                width: MediaQuery.of(context).size.width * 0.3,
                height: MediaQuery.of(context).size.height * 0.05,
                // button to liver disease page
                child: TextButton(
                  onPressed: () {
                    // navigator function
                    Navigator.push(
                      context,
                      // page transition to liver disease page
                      PageTransition(
                        child: const Home(),
                        type: PageTransitionType.fade,
                        duration: const Duration(milliseconds: 500),
                      ),
                    );
                  },
                  // button label
                  child: const Text(
                    'Liver Disease',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Century Gothic',
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

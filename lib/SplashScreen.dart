//  linking page animation package
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:page_transition/page_transition.dart';
// linking animated splash screen package
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

// import the homepage
import 'home.dart';

// the splash screen
class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          // Status bar color
          statusBarColor: Colors.white, // For both Android + iOS
          // Status bar brightness (optional)
          statusBarIconBrightness: Brightness.light, // For Android (dark icons)
          statusBarBrightness: Brightness.dark, // For iOS (dark icons)
        ),
        toolbarHeight: 0,
        elevation: 0,
      ),
      body: AnimatedSplashScreen(
        // the splash image
        splash: 'images/logo.png',
        // animation duration
        duration: 3000,
        // navigate to homepage
        nextScreen: const HomePage(),
        // fade in
        splashTransition: SplashTransition.fadeTransition,
        // fade out
        pageTransitionType: PageTransitionType.fade,
      ),
    );
  }
}

class Spl extends StatelessWidget {
  const Spl({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Image.asset(
            'images/logo.png',
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: RichText(
              text: const TextSpan(
                text: 'Powered by',
                style: TextStyle(
                  color: Colors.black,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Lincoln',
                    style: TextStyle(color: Colors.red),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

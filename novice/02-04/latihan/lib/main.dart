import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

void main() => runApp(LogoApp());

class LogoApp extends StatefulWidget {
  _LogoAppState createState() => _LogoAppState();
}

class _LogoAppState extends State<LogoApp> with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;

  @override
  void initState(){
    super.initState();
    controller = AnimationController(duration: const Duration(seconds: 2),vsync: this);
    animation = Tween<double>(begin: 0, end: 300).animate(controller)
    ..addStatusListener((state) => print('$state'));
      // ..addListener()) {
      //   setState(() {

      //   });

      // });
    controller.forward();
  }

  @override
  // Widget build(BuildContext context) => AnimatedLogo(animation: animation);
  Widget build(BuildContext context) => GrowTransition(
    child: LogoWidget(),
    animation: animation,
    );  
    // Widget build(BuildContext context) {
        //   return Center(
    //     child: Container(
    //       margin: EdgeInsets.symmetric(vertical: 10),
    //       height: 300,
    //       width: 300,
    //       height: animation.value,
    //       width: animation.value,
    //       child: FlutterLogo(),
    //     ),
    //   );
    // }
  
  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }
}
  
class AnimatedLogo extends AnimatedWidget {
  static final _opacityTween = Tween<double>(begin: 0.1, end: 1);
  static final _sizeTween = Tween<double>(begin: 0, end: 300);

  AnimatedLogo({Key key, Animation<double> animation}) : super(key: key, listenable : animation);

  Widget build(BuildContext context) {
    final Animation<double> animation = listenable;
    return Center(
      child: Opacity(
        opacity: _opacityTween.evaluate(animation),
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          height: _sizeTween.evaluate(animation),
          width: _sizeTween.evaluate(animation),
          child: FlutterLogo(),
        ),
      ),
      
    );
  }
}

class LogoWidget extends StatelessWidget {
  Widget build(BuildContext context) => Container(
    margin: EdgeInsets.symmetric(vertical: 10),
    child: FlutterLogo(),
  );
}

class GrowTransition extends StatelessWidget {
  GrowTransition({this.child, this.animation});

  final Widget child;
  final Animation<double> animation;

  Widget build(BuildContext context) => Center (
    child: AnimatedBuilder (
      animation: animation,
      builder: (context, child) => Container(
      height: animation.value,
      width: animation.value,
      child: child,
      ),
    child: child),
  );
}
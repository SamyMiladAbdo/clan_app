import 'package:clan_app/core/constants/assets.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  final Widget widget;

  const SplashScreen({super.key, required this.widget});
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 1500), () {
      // if(CacheHelper.getData(key: "appMode") == null){
      //   CacheHelper.saveData(key: "appMode",value: false);
      // }
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => widget.widget,
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image(image: AssetImage(AssetsData.logo,),height: 225.5,width: 224,),
      ),
    );
  }
}

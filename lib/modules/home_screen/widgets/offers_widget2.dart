import 'package:clan_app/core/constants/assets.dart';
import 'package:flutter/material.dart';

class OffersWidget2 extends StatelessWidget {
  const OffersWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipOval(

      child: Image.asset(
        AssetsData.test2,
        fit: BoxFit.cover,
        width: 87.0, // 2 * radius
        height: 87.0, // 2 * radius
        // color: Colors.blue,
      ),
    );
    
    // return const CircleAvatar(
    //     radius: 43.5,
    //     backgroundImage: AssetImage(
    //       AssetsData.test,
    //     ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class PngIcons extends StatelessWidget {
  final String name;
  final double? height;
  final double? width;
  PngIcons({super.key,required this.name,this.height,this.width});

  static String card='Card';
  static String google='Google';
  static String lock='Lock';
  static String netflix='Netflix';
  static String settings ='Settings';
  static String social='Socials';
  static String spotify='Spotify';
  static String visa='Visa';
  static String youTube='Youtube';
  static String send='Send';
  static String recieved='recieved';

   static const String _filePath="assets/Icons/png/";

   static void justNorm(String a,String b){
    print(google);
    }

  final Map<String,String>_image={
    card:'card.png',
    google:"google.png",
    lock:'lock.png',
    netflix:'netflix.png',
    settings:'settings.png',
    social:'social.png',
    spotify:'spotify.png',
    visa:'visa.png',
    youTube:'youtube.png',
    send:'send.png',
    recieved:'recieved.png'
  };




  @override
  Widget build(BuildContext context) {
     debugPrint('$_filePath${_image[name]}');
    return Image.asset(
      '$_filePath${_image[name]}',
          height: height ,
          width: width,
    );
  }
}

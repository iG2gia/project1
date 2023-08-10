import 'package:app0/kids/categories/tween%20girl/list_constractor.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class TweenGirl extends StatefulWidget {
  const TweenGirl({Key? key}) : super(key: key);

  @override
  State<TweenGirl> createState() => TweenGirlState();
}

class TweenGirlState extends State<TweenGirl> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: TweenGirlList(),
      backgroundColor: Color(0xFFFCFCFC),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            FontAwesomeIcons.arrowLeft,
            color: Colors.black,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        elevation: 0,
        backgroundColor: Color(0xFFFCFCFC),
        centerTitle: true,
        title: Text(
          'Tween Girl Section',
          style: TextStyle(color: Color(0XFF8B8B8B), fontSize: 18),
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
    ));
  }
}

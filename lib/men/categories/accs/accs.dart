import 'package:app0/men/categories/accs/list_constractor.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class Accs extends StatefulWidget {
  const Accs({Key? key}) : super(key: key);

  @override
  State<Accs> createState() => AccsState();
}

class AccsState extends State<Accs> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: AccsList(),
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
          'Accessories Section',
          style: TextStyle(color: Color(0XFF8B8B8B), fontSize: 18),
        ),
        iconTheme: IconThemeData(color: Colors.black),
      ),
    ));
  }
}

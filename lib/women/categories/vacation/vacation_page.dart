import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import 'list_constractor.dart';

class Vaction extends StatefulWidget {
  const Vaction({Key? key}) : super(key: key);

  @override
  State<Vaction> createState() => VactionState();
}

class VactionState extends State<Vaction> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: VacationList(),
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
            'Vacation Section',
            style: TextStyle(color: Color(0XFF8B8B8B), fontSize: 18),
          ),
          iconTheme: IconThemeData(color: Colors.black),
        ),
      ),
    );
  }
}
